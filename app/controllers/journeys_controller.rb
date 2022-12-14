class JourneysController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :new, :index, :show, :create, :edit, :update, :destroy ]
  def index
    @journeys = Journey.all
  end

  def show
    @journey = Journey.find(params[:id])
    @cities = @journey.cities
    @city_journeys = @journey.city_journeys.sort_by(&:start_date)

    @markers = @cities.geocoded.map do |city|
      {
        lat: city.latitude,
        lng: city.longitude,
        info_window: render_to_string(partial: "info_window", locals: { city: city})
      }
    end
  end

  def new
    @journey = Journey.new
    if current_user.nil?
      redirect_to "/users/sign_in"
      flash.notice = "You must be signed in to create your Journey"
    end
  end
# duplicate of above? \/
  def generate_new
    @journey = Journey.new
    if current_user.nil?
      redirect_to "/users/sign_in"
      flash.notice = "You must be signed in to create your Journey"
    end
  end

  def create_new
    @journey = Journey.new(name: current_user.journeys.last.name,
                           country: current_user.journeys.last.country,
                           start_date: current_user.journeys.last.start_date,
                           end_date: current_user.journeys.last.end_date,
                           tag: current_user.journeys.last.tag)
    @journey.user_id = current_user.id
    @journey_params = params[:journey]
    @cities = City.where(country: current_user.journeys.last.country)
    @tagged_cities = []
    # below iterates through each citie's tags, and compares with the users requested tag
    @cities.each do |city|
      city_tags_array = city.tags.downcase.split(", ") #takes the tags of the city in the desired country
      city_tags_array.each do |tag|
        if tag == current_user.journeys.last.tag.downcase #compares city tags with journey tag
          @tagged_cities << city
        end
      end
    end

    # before create, check not same city as cities inside list
    journey_length = @journey.end_date - @journey.start_date + 1
    number_of_stops = [journey_length.to_i / 3,1].max
    first_city = @tagged_cities.sample #chooses at random a city in the right country, with the right tag
    if @journey.save # starts big if statement ** #saves the journey. We can now create city journeys
      city_journey_list = []
      first_cj = CityJourney.new(city: first_city,
                                 journey: @journey,
                                 start_date: @journey[:start_date],
                                 end_date: @journey[:start_date] + 3)
      first_cj.save
      city_journey_list << first_cj #adds the first city to the list of cj for this trip
      until city_journey_list.length == number_of_stops
        previous_city_journey = city_journey_list.last
        cj_saved_city_names = []
        city_journey_list.each do |cj|
          cj_saved_city_names << cj.city.name
        end
        next_city_name = nil
        cj_saved_city_names.each do |city_name|
          while next_city_name.nil? || next_city_name == city_name
            next_cities = []
            tagged_next_cities = []
            previous_city_journey.city.next_cities.each do |city|
              next_cities << City.find_by_name(city)
            end
            next_cities.each do |city|
              next_city_tags_array = city.tags.downcase.split(", ") #takes the tags of the city in the next cities list
              next_city_tags_array.each do |tag|
                if tag == current_user.journeys.last.tag.downcase #compares city tags with journey tag
                  tagged_next_cities << city
                end
              end
            end
            next_city_name = tagged_next_cities.sample.name
          end
        end
        next_city = City.find_by_name(next_city_name)
        city_journey = CityJourney.new(city: next_city,
                                       journey: @journey,
                                       start_date: previous_city_journey.end_date,
                                       end_date: previous_city_journey.end_date + 3)
        if city_journey.save
          city_journey_list << city_journey
        else
          # run city generator again
        end
      end
      city_journey_list.last.end_date = @journey.end_date
      city_journey_list.last.save
      current_user.journeys.last(2).first.destroy
      flash.notice = "Journey created"
      redirect_to journey_path(@journey)
    else
      render :new, status: :unprocessable_entity
      flash.notice = "Journey not created"
    end
  end

  def create
    @journey = Journey.new(journey_params)
    @journey.user_id = current_user.id
    @journey_params = params[:journey]
    # if no tag, @journey.tag = [].sample
    if @journey_params[:tag] == "Surprise Me!"
      tags_to_sample = ["Food", "Mountain", "Sea", "Major City"]
      @journey.tag = tags_to_sample.sample
      @journey_params[:tag] = @journey.tag
    end
    @cities = City.where(country: @journey_params[:country])
    @tagged_cities = []
    @cities.each do |city|
      city_tags_array = city.tags.downcase.split(", ") #takes the tags of the city in the desired country
      city_tags_array.each do |tag|
        if tag == @journey_params[:tag].downcase #compares city tags with journey tag
          @tagged_cities << city
        end
      end
    end

    # before create, check not same city as cities inside list
    journey_length = @journey.end_date - @journey.start_date + 1
    number_of_stops = [journey_length.to_i / 3,1].max
    first_city = @tagged_cities.sample #chooses at random a city in the right country, with the right tag
    if @journey.save # starts big if statement ** #saves the journey. We can now create city journeys
      city_journey_list = []
      first_cj = CityJourney.new(city: first_city,
                                 journey: @journey,
                                 start_date: @journey[:start_date],
                                 end_date: @journey[:start_date] + 3)
      first_cj.save
      city_journey_list << first_cj #adds the first city to the list of cj for this trip
      until city_journey_list.length == number_of_stops
        previous_city_journey = city_journey_list.last
        cj_saved_city_names = []
        city_journey_list.each do |cj|
          cj_saved_city_names << cj.city.name
        end
        next_city_name = nil
        cj_saved_city_names.each do |city_name|
          while next_city_name.nil? || next_city_name == city_name
            next_cities = []
            tagged_next_cities = []
            previous_city_journey.city.next_cities.each do |city|
              next_cities << City.find_by_name(city)
            end
            next_cities.each do |city|
              next_city_tags_array = city.tags.downcase.split(", ") #takes the tags of the city in the next cities list
              next_city_tags_array.each do |tag|
                if tag == @journey_params[:tag].downcase #compares city tags with journey tag
                  tagged_next_cities << city
                end
              end
            end
            next_city_name = tagged_next_cities.sample.name
          end
        end
        next_city = City.find_by_name(next_city_name)
        city_journey = CityJourney.new(city: next_city,
                                       journey: @journey,
                                       start_date: previous_city_journey.end_date,
                                       end_date: previous_city_journey.end_date + 3)
        if city_journey.save
          city_journey_list << city_journey
        else
          # run city generator again
        end
      end
      city_journey_list.last.end_date = @journey.end_date
      city_journey_list.last.save
      flash.notice = "Journey created"
      redirect_to journey_path(@journey)
    else
      render :new, status: :unprocessable_entity
      flash.notice = "Journey not created"
    end
  end

  def edit
    @journey = Journey.find(params[:id])
  end

  def update
    @journey = Journey.new(journey_params)
    if @journey.save
      flash.notice = "Journey edited"
    else
      render :edit, status: :unprocessable_entity
      flash.notice = "Journey not edited"
    end
  end

  def destroy
    @journey = Journey.find(params[:id])
    @journey.destroy
    redirect_back(fallback_location: 'something')
    flash.alert = "You have deleted your journey"
  end

  private

  def journey_params
    params.require(:journey).permit(:start_date, :end_date, :tag, :comment, :user_id, :name, :country)
  end
end

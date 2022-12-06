class JourneysController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :new, :index, :show, :create, :edit, :update, :destroy ]
  def index
    @journeys = Journey.all
  end

  def show
    @journey = Journey.find(params[:id])
  end

  def new
    @journey = Journey.new
    if current_user.nil?
      redirect_to "/users/sign_in"
      flash.notice = "You must be signed in to create your Journey"
    end
  end

  def create
    @journey = Journey.new(journey_params)
    @journey.user_id = current_user.id
    @journeyParams = params[:journey]
    @cities = City.where(country: @journeyParams[:country])
    @tagged_cities = []
    @cities.each do |city|
      city_tags_array = city.tags.downcase.split(", ")
      city_tags_array.each do |tag|
        if tag == @journeyParams[:tag]
          @tagged_cities << city
        end
      end
    end

    # before create, check not same city as cities inside list
    # add more tags
    # add more seeds
    # should run the number of days of the journey, / 3 - 1

    first_city = @tagged_cities.sample
    if @journey.save
      city_journey_list = []
        cj1 = CityJourney.new(city: first_city, journey: @journey, start_date: @journey[:start_date], end_date: @journey[:end_date] )
        cj1.save
        city_journey_list << cj1
        3.times do
          previous_city_journey = city_journey_list.last
          next_city_name = previous_city_journey.city.next_cities.sample.strip
          next_city = City.find_by_name(next_city_name)
          city_journey = CityJourney.new(city: next_city,
                                         journey: @journey,
                                         start_date: previous_city_journey.end_date,
                                         end_date: previous_city_journey.end_date + 3)
        city_journey.save
        city_journey_list << city_journey
      end
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
  end

  private

  def journey_params
    params.require(:journey).permit(:start_date, :end_date, :tag, :comment, :user_id, :name, :country)
  end
end

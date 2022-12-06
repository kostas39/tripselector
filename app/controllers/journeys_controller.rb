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

    raise
    # t.string :name
    # t.string :tags
    # t.text :description
    # t.float :latitude
    # t.float :longitude
    # t.string :region
    # t.string :country
    # t.string :continent
    if @journey.save
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

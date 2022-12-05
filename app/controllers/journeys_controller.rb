class JourneysController < ApplicationController
  def index
    @journeys = Journey.all
  end

  def show
    @journey = Journey.find(params[:id])
  end

  def new
    @journey = Journey.new
  end

  def create
    @journey = Journey.new(journey_params)
    @journey.user_id = current_user
    @journey.save
  end

  def edit
    @journey = Journey.find(params[:id])
  end

  def update
    @journey = Journey.new(journey_params)
    @journey.save
  end

  def destroy
    @journey = Journey.find(params[:id])
    @journey.destroy
  end

  private

  def journey_params
    params.require(:journey).permit(:start_date, :end_date, :tags, :comment, :user_id)
  end
end

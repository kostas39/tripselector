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
  end

  def create
    @journey = Journey.new(journey_params)
    @journey.user_id = current_user.id
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
    params.require(:journey).permit(:start_date, :end_date, :tag, :comment, :user_id, :name)
  end
end

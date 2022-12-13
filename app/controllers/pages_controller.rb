class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home

  end

  def dashboard
    # show past present and future journeys
    @journeys = current_user.journeys.sort_by(&:start_date)
    @current_journey = []
    @journeys.each do |journey|
      if journey.start_date <= Date.today && journey.end_date >= Date.today
        @current_journey << journey
      end
    end
  end

  def profile
    @user = current_user
  end
end

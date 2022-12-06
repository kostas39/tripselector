class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  def dashboard
    # show past present and future journeys
    @journeys = current_user.journeys
  end
end

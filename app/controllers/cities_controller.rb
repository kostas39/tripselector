class CitiesController < ApplicationController
  def index
    @cities = City.all

    @markers = @cities.geocoded.map do |city|
      {
        lat: city.latitude,
        lng: city.longitude,
        info_window: render_to_string(partial: "info_window", locals: { city: city})
    }
    end
  end

  def show
    @city = City.find(params[:id])
  end

end

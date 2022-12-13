class CityJourneysController < ApplicationController
  def update
    @city_journey = CityJourney.find(params[:id])
    @city_journey.update(city_journey_params)
    @journey = @city_journey.journey
    @city_journeys = @journey.city_journeys.sort_by(&:start_date)
    city_list = @journey.cities
    @markers = city_list.geocoded.map do |city|
      {
        lat: city.latitude,
        lng: city.longitude
        # info_window: render_to_string(partial: "journeys/info_window", locals: { city: city })
      }
    end

    respond_to do |format|
      format.html { redirect_to city_journey_path }
      format.text { render partial: "journeys/show_partial", locals: {city_journeys: @city_journeys, journey: @journey, markers: @markers }, formats: [:html] }
    end
  end

  private

  def city_journey_params
    params.require(:city_journey).permit(:start_date, :end_date, :city_id)
  end
end

class CityJourneysController < ApplicationController
  def update
    @city_journey = CityJourney.find(params[:id])
    @city_journey.update(city_journey_params)
    @journey = @city_journey.journey
    @city_journeys = @journey.city_journeys.sort_by(&:start_date)
    # @markers = @city_journey.city.geocoded.map do |city|
    #  {
    #    lat: city.latitude,
    #    lng: city.longitude,
    #    info_window: render_to_string(partial: "info_window", locals: { city: @city_journey.city })
    #  }
    # end

    respond_to do |format|
      format.html { redirect_to city_journey_path }
      format.text { render partial: "journeys/city_journey_card", locals: {city_journey: @city_journey }, formats: [:html] }
      # format.text { render partial: "journeys/show_title", locals: {city_journeys: @city_journeys }, formats: [:html] }
      # format.text { render partial: "journeys/mapbox", locals: {markers: @markers}, formats: [:html] }
    end
  end

  private

  def city_journey_params
    params.require(:city_journey).permit(:start_date, :end_date, :city_id)
  end
end

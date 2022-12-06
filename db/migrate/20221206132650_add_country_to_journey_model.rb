class AddCountryToJourneyModel < ActiveRecord::Migration[7.0]
  def change
    add_column :journeys, :country, :string
  end
end

class CreateCityJourneys < ActiveRecord::Migration[7.0]
  def change
    create_table :city_journeys do |t|
      t.references :city, foreign_key: true
      t.references :journey, foreign_key: true
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end

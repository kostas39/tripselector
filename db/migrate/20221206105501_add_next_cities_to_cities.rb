class AddNextCitiesToCities < ActiveRecord::Migration[7.0]
  def change
    add_column :cities, :next_cities, :string, array: true
  end
end

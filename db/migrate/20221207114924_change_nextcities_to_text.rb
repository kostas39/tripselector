class ChangeNextcitiesToText < ActiveRecord::Migration[7.0]
  def change
    change_column :cities, :next_cities, :text, array: true
  end
end

class AddNameToJourney < ActiveRecord::Migration[7.0]
  def change
    add_column :journeys, :name, :string
  end
end

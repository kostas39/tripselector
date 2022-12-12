class AddFavoriteToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :favourite, :string
  end
end

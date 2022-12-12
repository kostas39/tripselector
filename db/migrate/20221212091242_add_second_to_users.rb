class AddSecondToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :second, :string
  end
end

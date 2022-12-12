class AddThirdToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :third, :string
  end
end

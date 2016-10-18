class AddColumnsToRestaurants < ActiveRecord::Migration
  def change
    add_column :restaurants, :city, :string
    add_column :restaurants, :cuisine, :string
    add_column :restaurants, :rating, :integer
    add_column :restaurants, :address, :string
  end
end

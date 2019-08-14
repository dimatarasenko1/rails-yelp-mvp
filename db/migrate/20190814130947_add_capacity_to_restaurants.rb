class AddCapacityToRestaurants < ActiveRecord::Migration[5.2]
  def change
    add_column :restaurants, :capacity, :integer
  end
end

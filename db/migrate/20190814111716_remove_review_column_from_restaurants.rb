class RemoveReviewColumnFromRestaurants < ActiveRecord::Migration[5.2]
  def change
    remove_column :restaurants, :reviews_id, :integer
  end
end

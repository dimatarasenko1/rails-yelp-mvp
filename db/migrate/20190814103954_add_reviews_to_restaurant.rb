class AddReviewsToRestaurant < ActiveRecord::Migration[5.2]
  def change
    add_reference :restaurants, :reviews, foreign_key: true
  end
end

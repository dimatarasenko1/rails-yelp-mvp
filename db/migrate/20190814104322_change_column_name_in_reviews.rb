class ChangeColumnNameInReviews < ActiveRecord::Migration[5.2]
  def change
    rename_column :reviews, :raing, :rating
  end
end

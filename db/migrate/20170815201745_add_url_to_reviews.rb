class AddUrlToReviews < ActiveRecord::Migration[5.1]
  def change
    add_column :reviews, :review_url, :string
  end
end

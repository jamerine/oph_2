class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.string :first_name
      t.string :last_name
      t.string :body
      t.boolean :active

      t.timestamps
    end
  end
end

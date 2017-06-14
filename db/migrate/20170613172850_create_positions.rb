class CreatePositions < ActiveRecord::Migration[5.1]
  def change
    create_table :positions do |t|
      t.string :title
      t.string :location
      t.string :position_type
      t.string :description
      t.string :application
      t.boolean :active

      t.timestamps
    end
  end
end

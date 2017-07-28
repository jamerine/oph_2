class FixDescriptionLength < ActiveRecord::Migration[5.1]
   change_table :positions do |t|
    t.change :description, :text
  end
end

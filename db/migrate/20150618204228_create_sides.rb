class CreateSides < ActiveRecord::Migration
  def change
    create_table :sides do |t|
      t.integer :found_id
      t.integer :item_id
      t.string :name

      t.timestamps null: false
    end
  end
end

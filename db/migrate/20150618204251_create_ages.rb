class CreateAges < ActiveRecord::Migration
  def change
    create_table :ages do |t|
      t.integer :found_id
      t.integer :item_id
      t.string :name

      t.timestamps null: false
    end
  end
end

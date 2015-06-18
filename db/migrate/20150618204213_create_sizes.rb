class CreateSizes < ActiveRecord::Migration
  def change
    create_table :sizes do |t|
      t.integer :found_id
      t.integer :item_id
      t.string :name

      t.timestamps null: false
    end
  end
end

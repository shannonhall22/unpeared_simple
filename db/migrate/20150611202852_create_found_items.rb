class CreateFoundItems < ActiveRecord::Migration
  def change
    create_table :found_items do |t|
      t.string :name
      t.text :desc
      t.string :category
      t.string :image1
      t.string :image2
      t.string :image3

      t.timestamps null: false
    end
  end
end

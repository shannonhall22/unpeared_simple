class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.text :desc
      t.integer :price
      t.boolean :found
      t.string :category
      t.string :image1
      t.string :image2
      t.string :image3
      t.integer :user_id

      t.timestamps null: false
    end
  end
end

class AddLocationToFoundItems < ActiveRecord::Migration
  def change
    add_column :found_items, :location, :string
  end
end

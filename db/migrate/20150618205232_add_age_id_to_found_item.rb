class AddAgeIdToFoundItem < ActiveRecord::Migration
  def change
    add_column :found_items, :age_id, :integer
  end
end

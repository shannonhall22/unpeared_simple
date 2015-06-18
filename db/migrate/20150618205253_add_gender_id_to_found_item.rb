class AddGenderIdToFoundItem < ActiveRecord::Migration
  def change
    add_column :found_items, :gender_id, :integer
  end
end

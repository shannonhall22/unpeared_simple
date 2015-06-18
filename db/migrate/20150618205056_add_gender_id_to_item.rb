class AddGenderIdToItem < ActiveRecord::Migration
  def change
    add_column :items, :gender_id, :integer
  end
end

class AddAgeIdToItem < ActiveRecord::Migration
  def change
    add_column :items, :age_id, :integer
  end
end

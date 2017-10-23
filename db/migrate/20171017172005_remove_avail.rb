class RemoveAvail < ActiveRecord::Migration[5.1]
  def change
     remove_column :mentor_infos, :availability
  end
end

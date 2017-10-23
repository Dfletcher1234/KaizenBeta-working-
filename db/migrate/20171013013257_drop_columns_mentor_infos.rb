class DropColumnsMentorInfos < ActiveRecord::Migration[5.1]
  def change
    remove_column :mentor_infos, :subcategories_id
  end
end

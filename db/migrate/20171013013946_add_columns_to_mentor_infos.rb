class AddColumnsToMentorInfos < ActiveRecord::Migration[5.1]
  def change
    add_column :mentor_infos, :summary, :text
    add_column :mentor_infos, :location, :string
  end
end

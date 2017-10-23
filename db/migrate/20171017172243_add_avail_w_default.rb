class AddAvailWDefault < ActiveRecord::Migration[5.1]
  def change
    add_column :mentor_infos, :availability, :boolean, :default => false

  end
end

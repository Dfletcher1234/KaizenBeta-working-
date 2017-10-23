class AddPostalCodeToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :postal_code, :string
    remove_column :mentor_infos, :location, :string
  end
end

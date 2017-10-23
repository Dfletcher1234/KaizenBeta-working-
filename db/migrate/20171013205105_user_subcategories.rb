class UserSubcategories < ActiveRecord::Migration[5.1]
  def change
    create_join_table(:users, :subcategories)
  end
end

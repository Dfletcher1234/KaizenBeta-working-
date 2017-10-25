class IsMentorBooleanDefault < ActiveRecord::Migration[5.1]
  def change
    change_column :users, :is_mentor, :boolean, default: false
  end
end

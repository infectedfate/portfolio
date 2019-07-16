class AddUsersInfo < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :about, :text
    add_column :users, :workplace, :text
    remove_column :users, :has_tags
  end
end

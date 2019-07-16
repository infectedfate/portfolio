class AddColumnsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :skills, :text
    add_column :users, :languages, :text
    add_column :users, :education, :text
  end
end

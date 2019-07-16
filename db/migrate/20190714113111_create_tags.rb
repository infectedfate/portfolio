class CreateTags < ActiveRecord::Migration[5.2]
  def change
    create_table :tags do |t|
      t.text :title
      t.integer :user_id

      t.timestamps
    end
  end
end

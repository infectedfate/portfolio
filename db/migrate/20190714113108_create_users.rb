class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.text :first_name
      t.text :last_name
      t.text :email
      t.text :image_url
      t.boolean :has_tags

      t.timestamps
    end
  end
end

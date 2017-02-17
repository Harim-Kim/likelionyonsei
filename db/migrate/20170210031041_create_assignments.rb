class CreateAssignments < ActiveRecord::Migration
  def change
    create_table :assignments do |t|
      t.string :title
      t.text :content
      t.string :img_url
      t.string :c9_url
      t.integer :user_id
      t.integer :assign_id

      t.timestamps null: false
    end
  end
end

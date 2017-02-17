class CreateNotices < ActiveRecord::Migration
  def change
    create_table :notices do |t|
      t.string :title
      t.text :content
      t.string :img_url
      t.string :url
      t.timestamps null: false
    end
  end
end

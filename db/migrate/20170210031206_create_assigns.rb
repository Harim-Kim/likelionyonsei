class CreateAssigns < ActiveRecord::Migration
  def change
    create_table :assigns do |t|
      t.string :title
      t.text :content
      t.string :img_url

      t.timestamps null: false
    end
  end
end

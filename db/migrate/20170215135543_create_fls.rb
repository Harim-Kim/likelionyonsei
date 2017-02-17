class CreateFls < ActiveRecord::Migration
  def change
    create_table :fls do |t|
      t.string :name
      t.string :url

      t.timestamps null: false
    end
  end
end

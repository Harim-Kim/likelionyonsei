class CreateSls < ActiveRecord::Migration
  def change
    create_table :sls do |t|
      t.string :name
      t.string :url

      t.timestamps null: false
    end
  end
end

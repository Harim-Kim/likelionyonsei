class CreateWeeklies < ActiveRecord::Migration
  def change
    create_table :weeklies do |t|

      t.text :content
      t.timestamps null: false
    end
  end
end

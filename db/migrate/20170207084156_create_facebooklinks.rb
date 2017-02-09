class CreateFacebooklinks < ActiveRecord::Migration
  def change
    create_table :facebooklinks do |t|
      t.string :name
      t.string :url

      t.timestamps null: false
    end
  end
end

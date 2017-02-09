class CreateSitelinks < ActiveRecord::Migration
  def change
    create_table :sitelinks do |t|
      t.string :name
      t.string :url

      t.timestamps null: false
    end
  end
end

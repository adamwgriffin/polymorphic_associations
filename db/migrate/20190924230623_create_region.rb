class CreateRegion < ActiveRecord::Migration
  def change
    create_table :region, id: false do |t|
      t.primary_key :regionid
      t.text :name
      t.timestamps null: false
    end
  end
end

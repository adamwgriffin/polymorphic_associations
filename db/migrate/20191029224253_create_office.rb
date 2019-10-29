class CreateOffice < ActiveRecord::Migration
  def change
    create_table :office, id: false  do |t|
      t.primary_key :officeid
      t.text :name
      t.timestamps null: false
    end
  end
end

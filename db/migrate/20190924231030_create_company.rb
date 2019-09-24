class CreateCompany < ActiveRecord::Migration
  def change
    create_table :company, id: false do |t|
      t.primary_key :companyid
      t.text :companyname
      t.timestamps null: false
    end
  end
end

class CreateOrganization < ActiveRecord::Migration
  def change
    create_table :organization, id: false do |t|
      t.primary_key :organizationid
      t.text :organizationname
      t.timestamps null: false
    end
  end
end

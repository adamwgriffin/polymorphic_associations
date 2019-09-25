class CreateFacebookPageConnection < ActiveRecord::Migration
  def change
    create_table :facebook_page_connection, id: false do |t|
      t.primary_key :facebook_page_connection_id
      t.integer :userid, null: false
      t.text :page_id, null: false
      t.text :approval_status, default: 'pending', null: false
      t.text :url
      t.timestamps null: false
    end
  end
end

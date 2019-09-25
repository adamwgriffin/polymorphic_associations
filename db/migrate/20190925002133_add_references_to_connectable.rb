class AddReferencesToConnectable < ActiveRecord::Migration
  def change
    change_table :facebook_page_connection do |t|
      t.integer :connectable_id
      t.string  :connectable_type
    end

    add_index :facebook_page_connection, :connectable_id, name: 'idx_facebook_page_connection_on_connectable_id'
  end
end

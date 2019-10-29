class AddReferencesToConnectable < ActiveRecord::Migration
  def change
    change_table :facebook_page_connection do |t|
        # add a polymorphic association called "connectable" to facebook_page_connection
      t.integer :connectable_id
      t.string  :connectable_type
      # make user nullable since we don't need it anymore
      t.integer :userid, null: true
    end

    # we also need an index for the polymorphic association
    add_index :facebook_page_connection, :connectable_id, name: 'idx_facebook_page_connection_on_connectable_id'
  end
end

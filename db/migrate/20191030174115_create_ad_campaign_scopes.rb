class CreateAdCampaignScopes < ActiveRecord::Migration
  def change
    create_table :ad_campaign_scope, id: false do |t|
      t.primary_key :ad_campaign_scope_id
      t.integer :ad_campaign_id, null: false
      t.string :scopeable_type, null: false
      t.integer :scopeable_id, null: false
      # we can't do this simple timestamps column
      # t.timestamps null: false

      # use this instead of timestamps
      t.integer :lock_version, default: 0
      t.timestamp :lastmodified
      t.timestamp :created
    end

    # we also need an index for the polymorphic association
    add_index :ad_campaign_scope, :ad_campaign_scope_id, name: 'ix_ad_campaign_scope_ad_campaign_scope_id'
    add_index :ad_campaign_scope, :ad_campaign_id, name: 'ix_ad_campaign_scope_ad_campaign_id'
  end
end

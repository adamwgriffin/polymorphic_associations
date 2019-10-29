class CreateAdCampaignEntities < ActiveRecord::Migration
  def change
    create_table :ad_campaign_entities, id: false do |t|
      t.primary_key :ad_campaign_entities_id
      t.integer :ad_campaign_id
      t.string :entity_type
      t.integer :entity_id
      t.timestamps null: false
    end

    # we also need an index for the polymorphic association
    add_index :ad_campaign_entities, :ad_campaign_entities_id, name: 'ix_ad_campaign_entities_ad_campaign_entities_id'
  end
end

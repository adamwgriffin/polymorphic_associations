class CreateAdCampaignCriterium < ActiveRecord::Migration
  def change
    create_table :ad_campaign_criterium, id: false do |t|
      t.primary_key :ad_campaign_criterium_id
      t.integer :ad_campaign_id, null: false
      t.timestamps null: false
    end
  end
end

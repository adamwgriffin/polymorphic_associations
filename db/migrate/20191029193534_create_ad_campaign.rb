class CreateAdCampaign < ActiveRecord::Migration
  def change
    create_table :ad_campaign, id: false  do |t|
      t.primary_key :ad_campaign_id
      t.integer :companyid, null: false
      t.timestamps null: false
    end
  end
end

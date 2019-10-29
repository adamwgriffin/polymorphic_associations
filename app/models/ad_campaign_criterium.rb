class AdCampaignCriterium < ActiveRecord::Base 
  self.table_name = "ad_campaign_criterium"
  self.primary_key = "ad_campaign_criterium_id"

  belongs_to :ad_campaign, foreign_key: :ad_campaign_id
end

class AdCampaign < ActiveRecord::Base 
  self.table_name = "ad_campaign"
  self.primary_key = "ad_campaign_id"

  has_many :ad_campaign_criterium, foreign_key: :ad_campaign_id, dependent: :destroy
end

class AdCampaignEntity < ActiveRecord::Base
  self.table_name = "ad_campaign_entities"
  self.primary_key = "ad_campaign_entities_id"
  belongs_to :entity, polymorphic: true
  belongs_to :ad_campaign
end

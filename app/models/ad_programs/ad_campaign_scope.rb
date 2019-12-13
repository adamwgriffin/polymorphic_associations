module AdPrograms
  class AdCampaignScope < ActiveRecord::Base
    self.table_name = "ad_campaign_scope"
    self.primary_key = "ad_campaign_scope_id"

    # this is an activerecord polymorphic junction table to connect ad_campaign records to organization, region, etc.
    belongs_to :scopeable, polymorphic: true
    belongs_to :ad_campaign
  end
end

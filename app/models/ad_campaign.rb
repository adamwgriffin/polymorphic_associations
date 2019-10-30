class AdCampaign < ActiveRecord::Base 
  self.table_name = "ad_campaign"
  self.primary_key = "ad_campaign_id"

  # this name needs to match the "through" part of has_many :offices in order for ad_campaign.organizations to work
  has_many :ad_campaign_scope
  has_one :company, through: :ad_campaign_scope, source: :scopeable, source_type: 'Company'
    # this association is necessary to do ad_campaign.organizations
  has_many :organizations, through: :ad_campaign_scope, source: :scopeable, source_type: 'Organization'
  has_many :regions, through: :ad_campaign_scope, source: :scopeable, source_type: 'Region'
  has_many :offices, through: :ad_campaign_scope, source: :scopeable, source_type: 'Office'
end

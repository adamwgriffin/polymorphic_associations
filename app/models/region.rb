class Region < ActiveRecord::Base
  include Connectable

  self.table_name = "region"
  self.primary_key = "regionid"

  has_many :ad_campaign_scope, as: :scopeable
  has_many :ad_campaigns, through: :ad_campaign_scope
  
end

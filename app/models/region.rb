class Region < ActiveRecord::Base
  include Connectable
  include ScopeableAssociations

  has_many :ad_campaign_scope, as: :scopeable
  has_many :ad_campaigns, through: :ad_campaign_scope
  
end

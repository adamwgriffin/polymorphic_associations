module ScopeableAssociations
  extend ActiveSupport::Concern

  included do
    # activerecord polymorphic associations to connect ad_campaign records to organization, region, etc.
    # these two are necessary to set up the association so that you can do things like office.ad_campaigns
    has_many :ad_campaign_scope, as: :scopeable
    has_many :ad_campaigns, through: :ad_campaign_scope
  end
end

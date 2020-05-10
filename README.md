# README

## Examples

### Associate an ad campaign record to an office
```
ad_campaign = AdPrograms::AdCampaign.first
office = Office.first

# I think the has_many :offices, through: :ad_campaign_scope, source: :scopeable, source_type: 'Office' association
# in AdPrograms::AdCampaign allows this to work
ad_campaign_scope = ad_campaign.ad_campaign_scope.create!(scopeable: office)
```

### Example of finding campaigns that an office admin can vew/edit
```
user_offices = [1]
campaigns = AdPrograms::AdCampaign
  .joins(:ad_campaign_scope)
  .includes(:ad_campaign_criterium)
  .where({ ad_campaign_scope: { scopeable_type: 'Office', scopeable_id: user_offices } })
```

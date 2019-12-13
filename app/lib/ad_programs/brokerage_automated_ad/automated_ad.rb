module AdPrograms
  module BrokerageAutomatedAd
    class AutomatedAd
      attr_reader :campaigns

      def initialize(companyid=1, campaign_type='office', entitiy_ids=[1])
        @user = user
        @company = user.company
        @listing = listing
        @job_id = job_id
      end

      def campaigns
        @campaigns ||= AdPrograms::AdCampaign.includes(:ad_campaign_criterium).where(companyid: @company.companypublickey)
      end
      
    end
  end
end

class Organization < ActiveRecord::Base
  include Connectable
  include ScopeableAssociations
  
  self.table_name = "organization"
  self.primary_key = "organizationid"
end

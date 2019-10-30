class Company < ActiveRecord::Base
  include Connectable
  include ScopeableAssociations
  
  self.table_name = "company"
  self.primary_key = "companyid"
end

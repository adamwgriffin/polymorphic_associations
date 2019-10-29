class Company < ActiveRecord::Base
  include Connectable
  
  self.table_name = "company"
  self.primary_key = "companyid"
end

class Region < ActiveRecord::Base
  include Connectable
  
  self.table_name = "region"
  self.primary_key = "regionid"
end

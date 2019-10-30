class Region < ActiveRecord::Base
  include Connectable
  include ScopeableAssociations

  self.table_name = "region"
  self.primary_key = "regionid"
end

class Office < ActiveRecord::Base
  include ScopeableAssociations

  self.table_name = "office"
  self.primary_key = "officeid"
end

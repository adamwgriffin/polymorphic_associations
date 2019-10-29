class User < ActiveRecord::Base
  include Connectable

  self.table_name = "user"
  self.primary_key = "userid"
end

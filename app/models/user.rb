class User < ActiveRecord::Base
  self.table_name = "user"
  self.primary_key = "userid"

  has_one :facebook_page_connection, as: :connectable, dependent: :destroy
end

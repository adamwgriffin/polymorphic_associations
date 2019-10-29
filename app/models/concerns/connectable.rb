module Connectable
  extend ActiveSupport::Concern

  included do
    has_one :facebook_page_connection, as: :connectable, dependent: :destroy
  end
end

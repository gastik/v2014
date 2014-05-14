class UserAddress < ActiveRecord::Base
  has_one :country
end

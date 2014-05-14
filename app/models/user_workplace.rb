class UserWorkplace < ActiveRecord::Base
  has_one :user_profile
end

class UserProfile < ActiveRecord::Base
  belongs_to :user

  has_one :phone, foreign_key: "user_id"
  accepts_nested_attributes_for :phone

  has_one :user_address
  accepts_nested_attributes_for :user_address

  has_one :user_profession
end

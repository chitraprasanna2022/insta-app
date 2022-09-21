class UserPost < ApplicationRecord
  belongs_to :user
  belongs_to :user_profile
end

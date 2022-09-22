class UserPost < ApplicationRecord
  belongs_to :user
  belongs_to :user_profile
  has_many_attached :post
  mount_uploader :post, ImageUploader
end

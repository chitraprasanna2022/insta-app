class UserProfile < ApplicationRecord
  belongs_to :user
  has_many :user_posts
  has_many_attached :profile_photo
  mount_uploader :profile_photo, ImageUploader
end

class UserProfile < ApplicationRecord
  include Elasticsearch::Model
  include Elasticsearch::Model::Callbacks
  belongs_to :user
  has_many :user_posts
  has_many_attached :profile_photo
  mount_uploader :profile_photo, ImageUploader
end

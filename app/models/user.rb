class User < ApplicationRecord
    has_one :user_profile
    has_one :user_post
end

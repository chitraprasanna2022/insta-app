class AddPostToUserPost < ActiveRecord::Migration[7.0]
  def change
    add_column :user_posts, :post, :string
  end
end

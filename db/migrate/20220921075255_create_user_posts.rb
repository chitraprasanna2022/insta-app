class CreateUserPosts < ActiveRecord::Migration[7.0]
  def change
    create_table :user_posts do |t|
      t.references :user, null: false, foreign_key: true
      t.references :user_profile, null: false, foreign_key: true
      t.string :content 
      t.string :title
      t.date :date
      t.text :like
      t.text :comment
      t.timestamps
    end
  end
end

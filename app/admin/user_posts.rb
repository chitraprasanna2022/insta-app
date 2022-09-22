ActiveAdmin.register UserPost do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :user_id, :user_profile_id, :content, :title, :date, :like, :comment, :post
  #
  index do 
    column :user_id
    column :user_profile_id
    column :content
    column :title
    column :date
    column "Image" do |product|
      image_tag (product.profile_photo.url rescue ''), width: 70, height:70
    end
  end
  #
  # permit_params do
  #   permitted = [:user_id, :user_profile_id, :content, :title, :date, :like, :comment]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end

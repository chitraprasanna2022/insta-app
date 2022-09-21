ActiveAdmin.register UserProfile do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :user_id, :bio, :dob, :profile_photo




index do 
    column :user_id
    column :bio
    column :dob
    column "Image" do |product|
      image_tag (product.profile_photo.url rescue ''), width: 70, height:70
    end
  end
  # form "profile_photo" do |p|
  #   ul do
  #     p.photos.each do |photo|
  #       li do
  #         image_tag url_for(photo)
  #       end
  #     end
  #   end
  # end
  #
  # or
  #
  # permit_params do
  #   permitted = [:user_id, :bio, :dob, :profile_photo]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end

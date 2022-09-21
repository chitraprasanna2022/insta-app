ActiveAdmin.register UserPost do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :user_id, :user_profile_id, :content, :title, :date, :like, :comment
  #
  # or
  #
  # permit_params do
  #   permitted = [:user_id, :user_profile_id, :content, :title, :date, :like, :comment]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end

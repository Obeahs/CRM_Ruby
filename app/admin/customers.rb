ActiveAdmin.register Customer do

  remove_filter :image_attachment, :image_blob
  
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :name, :phonenumber, :email, :notes
  #
  # or
  #
  # permit_params do
  #   permitted = [:name, :phonenumber, :email, :notes]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
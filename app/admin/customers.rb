ActiveAdmin.register Customer do
  remove_filter :image_attachment, :image_blob
  
    permit_params :name, :email, :notes, :phonenumber, :image
  
    form do |f|
      f.inputs do
        f.input :name
        f.input :email
        f.input :notes
        f.input :phonenumber
        f.input :image, as: :file
      end
      f.actions
    end
  
    show do
      attributes_table do
        row :name
        row :email
        row :notes
        row :phonenumber
        row :image do |customer|
          if customer.image.attached?
            image_tag url_for(customer.image)
          end
        end
      end
    end
  end
  


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
  
# end

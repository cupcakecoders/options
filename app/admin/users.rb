ActiveAdmin.register User do

permit_params :firstname, :lastname, :email, :password, :password_confirmation

index do
  column :firstname
  column :lastname
  column :email
  column :options_issued
end



  form title: 'New User' do |f|
    f.semantic_errors *f.object.errors.keys
    inputs 'Details' do
      input :firstname
      input :lastname
      input :email
      input :password
      input :password_confirmation
      li "Created at #{f.object.created_at}" unless f.object.new_record?
    end
    f.inputs 'Options details', for: [:option, f.object.option] do |d|
      #input :number_of_options
    end
    panel 'Markup' do
      "The following can be used in the content below..."
    end
    f.actions
  end


# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

end

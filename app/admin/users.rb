ActiveAdmin.register User do

index do
  column :firstname
  column :lastname
  column :email
  column :options_issued
end



  form title: 'A custom title' do |f|
    inputs 'Details' do
      input :firstname
      li "Created at #{f.object.created_at}" unless f.object.new_record?
    end
    panel 'Markup' do
      "The following can be used in the content below..."
    end
    actions
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

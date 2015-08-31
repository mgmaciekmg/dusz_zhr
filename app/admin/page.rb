ActiveAdmin.register Page do
 permit_params :page_id, :name, :desc, :active

 index do
 	selectable_column
 	column :id
 	column :name do |page|
 		link_to page.name, admin_page_path(page)
 	end
 	column :desc
 	column :active

 	actions
 end

 filter :name

 form do |f|
    f.inputs "Page details" do
      f.input :name
      f.input :desc
      f.label :active, "Yes", :value => "true"
      f.radio_button(:active, true)
      f.label :active, "No", :value => "false"
      f.radio_button(:active, false)
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
#   permitted << :other if resource.something?
#   permitted
# end


end

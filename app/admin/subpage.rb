ActiveAdmin.register Subpage do
 permit_params :page_id, :name, :sub_desc, :sub_active

 index do
 	selectable_column
 	column :id
 	column :page_id
 	column :name do |page|
 		link_to page.name, admin_page_path(page)
 	end
 	column :sub_desc
 	column :sub_active

 	actions
 end

 filter :name

 form do |f|
    f.inputs "Page details" do
      f.input :name
      f.input :page_id
      f.input :sub_desc
      f.label :sub_active, "Yes", :value => "true"
      f.radio_button(:sub_active, true)
      f.label :sub_active, "No", :value => "false"
      f.radio_button(:sub_active, false)
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

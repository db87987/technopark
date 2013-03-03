ActiveAdmin.register Event do
  filter :tag_id
  config.batch_actions = false
  
   index do 
    column :title
    column :date
    column :tag
    column :text do |column|
      truncate(strip_tags(column.text), length: 200)  
    end

    default_actions
  end
  
  form :html => { :enctype => "multipart/form-data" } do |f|
        f.inputs "Details" do
          f.input :title 
          f.input :date 
          f.input :tag
          f.input :text, :as => :ckeditor, :label => false
        end
        f.buttons
      end
       
  show do
    attributes_table do
       row :title
       row :date
       row :tag
       row :text do |row|
         truncate(strip_tags(row.text), length: 200).html_safe  
       end
     end
   end

end

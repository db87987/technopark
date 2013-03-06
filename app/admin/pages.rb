ActiveAdmin.register Page do
  config.batch_actions = false
  config.clear_sidebar_sections!
  
   index do 
    column :title
    column :img do |column|
      if column.img?
        image_tag(column.img.url(:thumb))
      end
    end
    column :text do |column|
      truncate(strip_tags(column.text), length: 200)  
    end

    default_actions
  end
  
  form :html => { :enctype => "multipart/form-data" } do |f|
        f.inputs "Details" do
          f.input :title 
          f.input :img, :as => :file, :hint => ( f.object.new_record? || !f.object.img? ) ? nil : image_tag(f.object.img.url(:thumb))
             unless f.object.new_record? || !f.object.img?
           f.input :delete_img, :as => :boolean, :label => I18n.t('destroy_image'), :wrapper_html => { :class => "important" }
         end
          f.input :text, :as => :ckeditor, :label => false
        end
        f.buttons
      end
       
  show do
    attributes_table do
       row :title
       row :img do |row|
         if row.img?
           image_tag(row.img.url(:thumb))
         end
       end
       row :text do |row|
         truncate(strip_tags(row.text), length: 200).html_safe  
       end
     end
   end
 
end

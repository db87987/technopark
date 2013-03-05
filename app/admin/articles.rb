ActiveAdmin.register Article do
  filter :category_id
  config.batch_actions = false
  
   index do 
    column :title
    column :img do |column|
      if column.img?
        image_tag(column.img.url(:thumb))
      end
    end
    column :category
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
          f.input :category
          f.input :text, :as => :ckeditor, :label => false
          f.input :file1, :as => :file
          f.input :file2, :as => :file
          f.input :file3, :as => :file
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
       row :category
       row :text do |row|
         truncate(strip_tags(row.text), length: 200).html_safe  
       end
       row :file1 do |row|
          if row.file1?
            link_to row.file1_file_name, row.file1.url(:original, false)
          end
        end
        row :file2 do |row|
           if row.file2?
             link_to row.file2_file_name, row.file2.url(:original, false)
           end
         end
         row :file3 do |row|
            if row.file3?
              link_to row.file3_file_name, row.file3.url(:original, false)
            end
          end
     end
   end
  
end





ActiveAdmin.register Enclosure do
  filter :category_id
  config.batch_actions = false
  
   index do 
    column :title
    column :attachment do |column|
      if column.attachment?
        link_to column.attachment_file_name, column.attachment.url(:original, false)
      end
    end

    default_actions
  end
  
  form :html => { :enctype => "multipart/form-data" } do |f|
        f.inputs "Details" do
          f.input :title 
          f.input :attachment, :as => :file
       
        end
        f.buttons
      end
       
  show do
    attributes_table do
       row :title
       row :attachment do |row|
         if row.attachment?
           link_to row.attachment_file_name, row.attachment.url(:original, false)
         end
       end
     end
   end

end

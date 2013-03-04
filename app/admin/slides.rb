ActiveAdmin.register Slide do
  filter :category_id
  config.batch_actions = false
  
   index do 
    column :sn
    column :img do |column|
      if column.img?
        image_tag(column.img.url(:thumb))
      end
    end

    default_actions
  end
  
  form :html => { :enctype => "multipart/form-data" } do |f|
        f.inputs "Details" do
          f.input :sn 
          f.input :img, :as => :file, :hint => ( f.object.new_record? || !f.object.img? ) ? nil : image_tag(f.object.img.url(:thumb))
         
        end
        f.buttons
      end
       
  show do
    attributes_table do
       row :sn
       row :img do |row|
         if row.img?
           image_tag(row.img.url(:thumb))
         end
       end
     end
   end

end

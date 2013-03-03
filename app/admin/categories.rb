ActiveAdmin.register Category do
  config.batch_actions = false
  
  form :html => { :enctype => "multipart/form-data" } do |f|
        f.inputs do
          f.input :title 
        end
        f.buttons
      end
end

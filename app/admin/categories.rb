ActiveAdmin.register Category do
  form :html => { :enctype => "multipart/form-data" } do |f|
        f.inputs do
          f.input :title 
        end
        f.buttons
      end
end

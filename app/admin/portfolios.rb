ActiveAdmin.register Portfolio do
  permit_params :title, :subtitle, :email, :body, :image
  index do
    selectable_column
    id_column
    column :title
    column :subtitle
    column :email
    column :body
    column :image
    column :current_sign_in_at
    column :sign_in_count
    column :created_at
    actions
  end
    filter :title
    filter :subtitle
    filter :email
    filter :body
    filter :image
  filter :current_sign_in_at
  filter :sign_in_count
  filter :created_at
  form do |f|
    f.inputs do
      f.input :title
      f.input :subtitle
      f.input :email
      f.input :body
      f.input :image, as: :file 
    end
    f.actions
  end
end
  
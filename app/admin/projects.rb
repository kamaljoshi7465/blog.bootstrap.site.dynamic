ActiveAdmin.register Project do
    permit_params :title, :image
    index do
      selectable_column
      id_column
      column :title
      column :image
      column :current_sign_in_at
      column :sign_in_count
      column :created_at
      actions
    end
    filter :title
    filter :image
    filter :current_sign_in_at
    filter :sign_in_count
    filter :created_at
    form do |f|
      f.inputs do
        f.input :title
        f.input :image, as: :file 
      end
      f.actions
    end
  end
  
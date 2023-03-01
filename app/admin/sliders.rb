ActiveAdmin.register Slider do
    permit_params :name, :image
    index do
      selectable_column
      id_column
      column :name
      column :image
      column :current_sign_in_at
      column :sign_in_count
      column :created_at
      actions
    end
    filter :name
    filter :image
    filter :current_sign_in_at
    filter :sign_in_count
    filter :created_at
    form do |f|
      f.inputs do
        f.input :name
        f.input :image, as: :file 
      end
      f.actions
    end
  end
  
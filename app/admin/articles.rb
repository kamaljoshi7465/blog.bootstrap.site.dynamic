ActiveAdmin.register Article do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :title, :body, :status
  #
  # or
  #
  # permit_params do
  #   permitted = [:title, :body, :status]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  

  permit_params :title, :body, :status
  index do
    selectable_column
    id_column
    column :title
    column :body
    column :status
    column :current_sign_in_at
    column :sign_in_count
    column :created_at
    actions
  end
  filter :title
  filter :body
  filter :status
  filter :current_sign_in_at
  filter :sign_in_count
  filter :created_at
  form do |f|
    f.inputs do
      f.input :title
      f.input :body
      f.input :status
    end
    f.actions
  end
end

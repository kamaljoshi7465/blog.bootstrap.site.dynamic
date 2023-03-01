class CreatePortfolios < ActiveRecord::Migration[7.0]
  def change
    create_table :portfolios do |t|
      t.string :title
      t.string :subtitle
      t.string :email
      t.text :body
      t.string :image

      t.timestamps
    end
  end
end

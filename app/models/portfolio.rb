class Portfolio < ApplicationRecord
    validates :title, :subtitle, :body, :image, :email, presence: true    
    validates :email, uniqueness: true
    validates :body, length: {minimum: 10}    
end

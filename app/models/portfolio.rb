class Portfolio < ApplicationRecord
    mount_uploader :image, AvatarUploader
    validates :title, :subtitle, :body, :image, :email, presence: true    
    validates :email, uniqueness: true
    validates :body, length: {minimum: 10}    
end

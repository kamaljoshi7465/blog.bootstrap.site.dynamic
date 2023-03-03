class Project < ApplicationRecord
    mount_uploader :image, AvatarUploader
    validates :title, :image, presence: true
end

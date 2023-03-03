class Slider < ApplicationRecord
    mount_uploader :image, AvatarUploader
    validates :name, :image, presence: true
    validates :name, presence: true
end

class Slider < ApplicationRecord
    validates :name, :image, presence: true
    validates :name, presence: true
end

class Project < ApplicationRecord
    validates :title, :image, presence: true
end

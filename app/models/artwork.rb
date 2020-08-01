class Artwork < ApplicationRecord
  belongs_to :artist
  validates :title, :year, :image_url, :description, presence: true
  validates :description, length: { maximum: 1200 }
end

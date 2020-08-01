class Artist < ApplicationRecord
  has_many :artworks
  validates :name, :biography, :profile_image_url, presence: true
  validates :biography, length: { maximum: 1200 }
end

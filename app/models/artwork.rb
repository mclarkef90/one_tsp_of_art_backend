class Artwork < ApplicationRecord
  belongs_to :artist
  validates :title, :year, :image_url, :description, presence: true
  validates :description, length: { maximum: 1200 }

  def randomThree
    self.all.sample(3)
  end

end

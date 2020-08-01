class ArtworkSerializer < ActiveModel::Serializer
  attributes :id, :title, :year, :image_url, :description
  has_one :artist
end

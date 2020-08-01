class ArtistSerializer < ActiveModel::Serializer
  attributes :id, :name, :biography, :profile_image_url
end

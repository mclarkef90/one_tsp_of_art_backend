class ArtistSerializer < ActiveModel::Serializer
  attributes :id, :name, :biography, :profile_image_url

  def initialize(artist_obj)
    @artist_obj= artist_obj
  end

  def to_serialized_json
    @artist_obj.to_json({
      include: {artworks: {except: [:created_at, :updated_at]}},
      except: [:created_at, :updated_at]
    })
  end
end

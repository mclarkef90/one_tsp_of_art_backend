class ArtworkSerializer < ActiveModel::Serializer
  attributes :id, :title, :year, :image_url, :description, :likes
  has_one :artist

  def initialize(artwork_obj)
    @artwork_obj= artwork_obj
  end

  def to_serialized_json
    @artwork_obj.to_json({
      include: {artist: {except: [:created_at, :updated_at]}},
      except: [:created_at, :updated_at]
    })
  end

end

class Api::V1::ArtworksController < ApplicationController

  def index
    artworks= Artwork.all
    render json: ArtworkSerializer.new(artworks).to_serialized_json
  end

end

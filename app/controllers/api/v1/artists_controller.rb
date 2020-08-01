class Api::V1::ArtistsController < ApplicationController

  def index
    artists= Artist.all
    render json: ArtistSerializer.new(artists).to_serialized_json
  end

  def update
    artist= Artist.find_by(id: params[:id])
    artist.update(artist_params)
    render json: ArtistSerializer.new(artist).to_serialized_json
  end

  private

  def artist_params()
    params.require(:artist).permit(:id, :name, :biography, :profile_image_url, :artworks)
  end

end

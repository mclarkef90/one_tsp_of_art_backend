class Api::V1::ArtistsController < ApplicationController

  def index
    artists= Artist.all
    render json: ArtistSerializer.new(artists).to_serialized_json
  end

  def create
    artist= Artist.new(artist_params)
    if artist.save
      render json: ArtistSerializer.new(artist).to_serialized_json
    else
      render json: {errors: artist.errors.full_messages}, status: :unprocessible_entity
    end
  end

  def update
    artist= Artist.find_by(id: params[:id])
    artist.update(artist_params)
    if artist.save
      render json: ArtistSerializer.new(artist).to_serialized_json
    else
      render json: {errors: artist.errors.full_messages}, status: :unprocessible_entity
    end
  end

  def destroy
    artist= Artist.find_by(id: params[:id])
    if artist
      artist.delete
    else
      render json: {errors: artist.errors.full_messages}, status: :unprocessible_entity
    end
  end

  private

  def artist_params()
    params.require(:artist).permit(:id, :name, :biography, :profile_image_url, :artworks)
  end

end

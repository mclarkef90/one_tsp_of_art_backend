class Api::V1::ArtworksController < ApplicationController

  def index
    artworks= Artwork.all
    render json: ArtworkSerializer.new(artworks).to_serialized_json
  end

  #nested under artist
  def create
    artist= Artist.find_by(id: params[:artist_id])
    artwork= artist.artworks.build(artwork_params)
    if artwork.save
      render json: ArtworkSerializer.new(artwork).to_serialized_json
    else
      render json: {errors: artwork.errors.full_messages}, status: :unprocessible_entity
    end
  end

  def update
    artwork= Artwork.find_by(id: params[:id])
    artwork.update(artwork_params)
    if artwork.save
      render json: ArtworkSerializer.new(artwork).to_serialized_json
    else
      render json: {errors: artwork.errors.full_messages}, status: :unprocessible_entity
    end
  end

  def destroy
    artwork= Artwork.find_by(id: params[:id])
    if artwork
      artwork.delete
    else
      render json: {errors: artwork.errors.full_messages}, status: :unprocessible_entity
    end
  end


  def randomThree
    artworks= Artwork.all.sample(1)
    render json: ArtworkSerializer.new(artworks).to_serialized_json
  end

  private

  def artwork_params()
    params.require(:artwork).permit(:id, :title, :year, :image_url, :description, :likes, :artist_id)
  end

end

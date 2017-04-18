class ArtworksController < ApplicationController
  def index
    # user = params[:user_id]
    user = User.find_by(id: params[:user_id])
    artworks = user.artworks
    artworks << user.shared_artworks
    render json: artworks
  end

  def create
    artwork = Artwork.new(artwork_params)

    if artwork.save
      render json: artwork
    else
      render(
        json: artwork.errors.full_messages, status: :unprocessable_entity
      )
    end
  end

  def show
    artwork = Artwork.find_by(id: params[:id])
    render json: artwork
  end

  def update
    artwork = Artwork.find_by(id: params[:id])
    if artwork.update(artwork_params)
      render json: artwork
    else
      render(
        json: artwork.errors.full_messages, status: :unprocessable_entity
      )
    end
  end

  def destroy
    artwork = Artwork.find_by(id: params[:id])
    if artwork.delete
      render json: artwork
    else
      render(
        json: artwork.errors.full_messages, status: :unprocessable_entity
      )
    end
  end

  private

  def artwork_params
    params.require(:artwork).permit(:title, :image_url, :artist_id)
  end
end

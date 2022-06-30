class ArtworksController < ApplicationController
    def index
        user = User.find(params[:user_id])
        render json: user.artworks + user.shared_artworks
    end

    def create
        artwork = Artwork.new(artwork_params)
        # replace the `user_attributes_here` with the actual attribute keys
        if artwork.save
            render json: artwork
        else
            render json: artwork.errors.full_messages, status: :unprocessable_entity
        end
      end

    def show
        render json: Artwork.find(params[:id])
    end

    def update
        artwork = Artwork.find(params[:id])
        artwork.update(artwork_params)
        render json: artwork
    end

    def destroy
        artwork = Artwork.find(params[:id])
        artwork.delete
        render json: Artwork.all
    end
    
    private
    def artwork_params
        params.require(:artwork).permit(:title, :artist_id, :image_url)
    end

end
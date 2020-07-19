class ArtistsController < ApplicationController

    def index 
        @artists = Artist.all 
    end

    def show 
        #find the artist
        @artist = Artist.find(params[:id])
    end

    def new 
        #we need to pass a artist instance/object
        @artist = Artist.new 
    end

    def create
        #create an artist using helper method artist_params
        @artist = Artist.create(artist_params)
        #After submitting, the user should be redirected to the new artist’s show page
        redirect_to artist_path(@artist)
    end
    
    def edit 
        #find the artist to edit, with this rails knows we're editing and NOT creating 
        @artist = Artist.find(params[:id])
    end

    def update #similar to create #find the garden
        artist = Artist.find(params[:id])
        #actually edit the artist
        artist.update(artist_params)
        #redirect to the updated artist 
        redirect_to artist_path(artist.id)
        #redirect_to "/artists/#{artist.id}"
    end

    private
    def artist_params
        params.require(:artist).permit(:name, :bio)
    end
end

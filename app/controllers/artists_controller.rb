class ArtistsController < ApplicationController

    def index
        @artists = Artist.all
    end

    def show
        @artist = Artist.find(params[:id])
    end

    def new
        @artist = Artist.new
    end

    def create
        @artist = Artist.new(artist_params)
        @artist.save
        redirect_to artist_path(@artist)
    end

    def edit
      show
    end

    def update
      show
      show.update(artist_params)
      redirect_to artist_path(show)
    end
    
    private

    def artist_params
        params.require(:artist).permit(:name, :bio)
    end



    
end
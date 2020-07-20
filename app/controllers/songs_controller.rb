class SongsController < ApplicationController

    def index 
        @songs = Song.all 
    end

    def show 
        #find the song
        @song = Song.find(params[:id])
    end

    def new 
        #we need to pass a song instance/object
        @song = Song.new 
    end

    def create
        #create an song using helper method song_params
        @song = Song.create(song_params)
        #After submitting, the user should be redirected to the new song’s show page
        redirect_to song_path(@song)
    end
    
    def edit 
        #find the song to edit, with this rails knows we're editing and NOT creating 
        @song = Song.find(params[:id])
    end

    def update #similar to create #find the garden
        song = Song.find(params[:id])
        #actually edit the song
        song.update(song_params)
        #redirect to the updated song 
        redirect_to song_path(song.id)
        #redirect_to "/songs/#{song.id}"
    end

    private
    def song_params
        params.require(:song).permit(:name, :artist_id, :genre_id)
    end
end

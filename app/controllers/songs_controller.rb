class SongsController < ApplicationController
  before_action :find_song, except: %i[index new create]

  def index
    @songs = Song.all
  end

  def show

  end

  def new
    @song = Song.new
  end

  def edit
  end

  def create
    @song = Song.new(song_params(:name, :artist_id, :genre_id))
    @song.save
    redirect_to song_path(@song)
  end

  def update
    @song.update(song_params(:name, :artist_id, :genre_id))
    redirect_to song_path(@song)
  end

  private

  def song_params(*args)
    params.require(:song).permit(*args)
  end

  def find_song
    @song = Song.find(params[:id])
  end
  

end
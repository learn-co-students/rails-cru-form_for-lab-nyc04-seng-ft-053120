class SongsController < ApplicationController
  def show
    @song = set_song
  end

  def new
    @song = Song.new
  end

  def create
    @song = Song.create(song_params(:name, :artist, :genre))
    redirect_to song_path(@song)
  end

  def edit
    @song = set_song
  end

  def update
    @song = set_song
    @song.update(song_params(:name, :artist, :genre))
    redirect_to song_path(@song)
  end

  def index
    @songs = Song.all
  end

  private

  def set_song
    @song = Song.find(params[:id])
  end

  def song_params(*args)
    params.require(:song).permit(*args)
  end
end

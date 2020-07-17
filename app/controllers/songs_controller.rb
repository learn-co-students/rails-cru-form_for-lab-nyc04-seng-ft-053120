class SongsController < ApplicationController
  def index
    @songs = Song.all
  end
  def new
    @song = Song.new
  end

  def create
    @song = Song.create(params_params)
    redirect_to @song
  end

  def show
    @song = Song.find(params[:id])
  end

  def edit
    @song = Song.find(params[:id])
  end

  def update
    @song = Song.find(params[:id])
    @song.update(params_params)
    redirect_to @song
  end

  private

  def params_params
    params.require(:song).permit(:name, :artist_id, :genre_id)
  end
end

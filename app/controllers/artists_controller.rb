class ArtistsController < ApplicationController
  before_action :find_artist, except: %i[index new create]

  def index
    @artists = Artist.all
  end

  def show; end

  def new
    @artist = Artist.new
  end

  def edit; end

  def create
    @artist = Artist.new(artist_params(:name, :bio))
    @artist.save
    redirect_to artist_path(@artist)
  end

  def update
    @artist.update(artist_params(:name, :bio))
    @artist.save
    redirect_to artist_path(@artist)
  end

  private

  def artist_params(*args)
    params.require(:artist).permit(*args)
  end

  def find_artist
    @artist = Artist.find(params[:id])
  end
end

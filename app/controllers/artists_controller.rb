class ArtistsController < ApplicationController
  def show
    @artist = Artist.find(params[:id])
  end

  def new
    @artist = Artist.new
  end

  def create
    artist = params[:artist]
    @artist = Artist.create(name: artist[:name], bio: artist[:bio])
    redirect_to artist_path(@artist)
  end

  def edit
    @artist = Artist.find(params[:id])
  end

  def update
    @artist = Artist.find(params[:id])
    @artist.update(form_params(:name, :bio))
    redirect_to artist_path(@artist)
  end

  private
  
  def form_params(*args)
    params.require(:artist).permit(*args)
  end
end

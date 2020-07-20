class GenresController < ApplicationController

    def show 
        #find the genre
        @genre = Genre.find(params[:id])
    end

    def new 
        #we need to pass a genre instance/object
        @genre = Genre.new 
    end

    def create
        #create an genre using helper method genre_params
        @genre = Genre.create(genre_params)
        #After submitting, the user should be redirected to the new genre’s show page
        redirect_to genre_path(@genre)
    end
    
    def edit 
        #find the genre to edit, with this rails knows we're editing and NOT creating 
        @genre = Genre.find(params[:id])
    end

    def update #similar to create #find the garden
        genre = Genre.find(params[:id])
        #actually edit the genre
        genre.update(genre_params)
        #redirect to the updated genre 
        redirect_to genre_path(genre.id)
        #redirect_to "/genres/#{genre.id}"
    end

    private
    def genre_params
        params.require(:genre).permit(:name)
    end
end
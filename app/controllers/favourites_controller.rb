class FavouritesController < ApplicationController
    def new
    end

    def create
        @favourite = Favourite.new(params[:favourite])
        @favourite.save

        redirect_to root_path
    end

    def destroy
        @fav = Favourite.find(params[:title])
        @fav.destroy

        redirect_to root_path
    end

    private
        def favourite_params
            params.require(:favourite).permit(:title, :description)
        end
end
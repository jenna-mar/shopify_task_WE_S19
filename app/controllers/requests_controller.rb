class RequestsController < ApplicationController

  #searches Toronto Waste Wizard Lookup Table keywords for the given query
	def search
    redirect_to root_path(query: params[:query])
	end

  #adds given repo to favourites (and reload)
	def addstar
		fav = Favourite.new(favourite_params)
		fav.save
		
		redirect_to root_path(query: params[:query])
	end

  #removes given repo to favourites
	def removestar
    #assume titles are unique
		fav = Favourite.where(title: params[:title]).first
		fav.destroy
		
		redirect_to root_path(query: params[:query])
		end

	def favourite_params
		params.permit(:title, :description)
	end
end
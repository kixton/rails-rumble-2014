class CategoriesController < ApplicationController
	def index
		@categories = Category.all
	end

	def show
		@category = Category.find(params[:id])
		if @category 
			render json: @category
		else
			render status: 404, json: {status: :could_not_find}
		end
	end

	

end

class ScalesController < ApplicationController

	def index
		@scales = Category.find(params[:category_id]).scales
		render json: @scales
	end

	def show
		@scale = Scale.find(params[:id])
		render json: @scale
	end
end

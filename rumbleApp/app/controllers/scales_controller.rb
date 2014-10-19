class ScalesController < ApplicationController

	def index
		@scales = Category.find(params[:category_id]).scales
		render json: @scales
	end

	def create
		@scale = Scale.create({category_id: params[:category_id], name: params[:name], positive: params[:pos], negative: params[:neg]})
	end

	def show
		@scale = Scale.find(params[:id])
		render json: @scale
	end
end

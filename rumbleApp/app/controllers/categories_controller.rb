class CategoriesController < ApplicationController
	def index
		@categories = Category.all
	end

	def create
		@category = Category.new(name: params[:name])
	end

	def all_entities
		@entities = Category.find(params[:id]).entities
		render json: @entities
	end

	def show
		@category = Category.find(params[:id])
		if @category 
			render json: @category
		else
			render status: 404, json: {status: :could_not_find}
		end
	end

	def get_scores
		@category = Category.find(params[:id])
		@entities = @category.entities
		@scores = []
		@entities.each do |ent|			
			@x_score = ent.entities_scales.where(scale_id: params[:x_scale_id]).first
			@y_score = ent.entities_scales.where(scale_id: params[:y_scale_id]).first
			ent = {name: ent.name, x: @x_score, y: @y_score}
			@scores << ent
		end
		render json: @scores
	end

end

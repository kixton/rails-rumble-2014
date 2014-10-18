class EntitiesController < ApplicationController
  def index
  	render json: Category.find(params[:category_id]).entities
  end

  def show
  	@entity = Entity.find(params[:id])
  	render json: @entity
  end

  def all_scores
  	@entity = Entity.find(params[:entity_id])
  	@scores = @entity.entities_scales
  	render json: @scores
  end

  def update
  	@entity = Entity.find(params[:entity_id])
  	@score = @entity.entities_scales.where(scale_id: params[:scale_id])
  	@score.update(score: (@score.score+1))
  	render json: @score
  end

  def get_scores
  	@entity = Entity.find(params[:entity_id])
  	@x_score = @entity.entities_scales.where(scale_id: params[:x_scale_id]).first
  	@y_score = @entity.entities_scales.where(scale_id: params[:y_scale_id]).first
  	render json: {name: @entity.name, x: @x_score, y: @y_score}
  end
end

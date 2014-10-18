class EntitiesController < ApplicationController
  def index
  	render json: Category.find(params[:category_id]).entities
  end

  def show
  	@entity = Entity.find(params[:id])
  	render json: @entity
  end

  def scores
  	@entity = Entity.find(params[:entity_id])
  	@scores = @entity.entities_scales
  	render json: @scores
  end

  def vote_plus
  	@entity = Entity.find(params[:entity_id])
  	@score = @entity.entities_scales.where(scale_id: params[:scale_id])
  	@score.increment!(:total)
  end

end

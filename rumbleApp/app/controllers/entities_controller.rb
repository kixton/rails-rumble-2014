class EntitiesController < ApplicationController
  def index
  	render json: Category.find(params[:category_id]).entities
  end

  def show
  	@entity = Entity.find(params[:id])
  	render json: @entity
  end

end

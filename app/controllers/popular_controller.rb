class PopularController < ApplicationController
  def index
  	#@list = Category.includes(:clues).limit(100)
  	@list = Category.where("clues_count > 100").order("clues_count DESC")
  end
  def list
  	@category = Category.find(params[:category_id])
  	@list = Clue.where("category_id = ? AND question != ''", params[:category_id]).order("airdate DESC, value ASC")
  end
end

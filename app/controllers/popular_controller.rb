class PopularController < ApplicationController
  def index
  	#@list = Category.includes(:clues).limit(100)
  	@list = Category.where("clues_count > 10")
  	@count = @list.count
  end
end

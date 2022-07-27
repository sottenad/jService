class IndexController < ApplicationController
  def home
  	offsetcount = rand(Clue.count)
  	@sample = Clue.first
  	@count = Clue.count

    render 'index/home'

  end

    
  def about
  end
end

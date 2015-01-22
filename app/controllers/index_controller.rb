class IndexController < ApplicationController
  def home
  	offsetcount = rand(Clue.count)
  	@sample = Clue.first(offset: offsetcount)
  	@count = Clue.count
  end

    
  def about
  end
end

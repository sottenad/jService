class IndexController < ApplicationController
  def home
  	offsetcount = rand(Clue.count)
  	@sample = Clue.first(offset: offsetcount)
  
  end

  def about
  end
end

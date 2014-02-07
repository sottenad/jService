class ApiController < ApplicationController
	def random
		randNum = rand(Clue.count)
		@result = Clue.first(offset: randNum)
		
		respond_to do |format|
			format.json { render :json => @result.to_json(:include => :category) }
		end	
	end
end

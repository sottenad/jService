class SearchController < ApplicationController
  def index
      if !params[:query].nil?
        @results = Category.custom_search(params[:query]).limit(100).reorder("clues_count desc")
        #@results = PgSearch.multisearch(params[:query]).limit(100)
        
      else
         @results = nil
      end
  end

  def results
  end
end

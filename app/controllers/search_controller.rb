class SearchController < ApplicationController
  def index
      if !params[:query].nil?
        @search = Category.search do
            fulltext params[:query]
            order_by :clues_count, :desc
        end
        @results = @search.results
      else
         @results = nil
      end
  end

  def results
  end
end

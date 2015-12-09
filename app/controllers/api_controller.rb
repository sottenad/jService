class ApiController < ApplicationController
  def random
    randNum = rand(Clue.count)
    count = params[:count].present? ? params[:count] : 1
    if(count.to_f > 100)
      count = 100
    end
    @result = Clue.all(offset: randNum, :limit => count)
    respond_to do |format|
      format.json { render :json => @result.to_json(:include => :category) }
    end
  end

  def clues
    clues = Clue
    clues = clues.where("value = ?", params[:value])  if params[:value].present?
    if(params[:min_date].present? && params[:max_date].present?)
      clues = clues.where("airdate between ? AND ?", Chronic.parse(params[:min_date]), Chronic.parse(params[:max_date]))
    else
      clues = clues.where("airdate < ?", Chronic.parse(params[:min_date])) if params[:min_date].present?
      clues = clues.where("airdate > ?", Chronic.parse(params[:max_date])) if params[:max_date].present?
    end

    clues = clues.where("category_id = ?", params[:category]) if params[:category].present?
    offset = params[:offset].present? ? params[:offset] : 0

    @result = clues.limit(100).offset(offset)

    respond_to do |format|
      format.json { render :json => @result.to_json(:include => :category) }
    end
  end

  def categories
    offset = params[:offset].present? ? params[:offset] : 0
    count = params[:count].present? ? params[:count] : 1
    
    if(count.to_f > 100)
      count = 100
    end
    @categories = Category.all(:limit => count, :offset => offset)
    
    respond_to do |format|
      format.json { render json: @categories }
    end
  end

  def single_category
    @category = Category.find(params[:id])
    respond_to do |format|
      format.json { render :json => @category.to_json(:include => { :clues => { :except => [:created_at, :updated_at]}}) }
    end
  end

  def mark_invalid
    @clue = Clue.find(params[:id])
    @clue.increment(:invalid_count,1)
    @clue.save
    
    respond_to do |format|
      format.json {render :json => @clue.to_json() }    
    end    
  end
end

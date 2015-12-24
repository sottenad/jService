class Clue < ActiveRecord::Base
  attr_accessible :airdate, :answer, :question, :value, :category_id, :category
  belongs_to :category, :counter_cache => true

  def to_json(options={})
     options[:except] ||= [:updated_at, :created_at]
     super(options)
  end
end

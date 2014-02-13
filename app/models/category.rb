class Category < ActiveRecord::Base
  attr_accessible :title, :clues_count
  has_many :clues
  
  def as_json(options={})
     options[:except] ||= [:updated_at, :created_at]
     super(options)
   end
end

class Category < ActiveRecord::Base
  attr_accessible :title, :clues_count
  has_many :clues
  
end

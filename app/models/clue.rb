class Clue < ActiveRecord::Base
  attr_accessible :airdate, :answer, :question, :value, :category_id, :category
  belongs_to :category
end

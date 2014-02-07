class ChangeQuestionToText < ActiveRecord::Migration
  def change
  	change_column :clues, :question, :text
  end
end

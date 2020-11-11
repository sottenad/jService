class ChangeQuestionToText < ActiveRecord::Migration[4.2]
  def change
  	change_column :clues, :question, :text
  end
end

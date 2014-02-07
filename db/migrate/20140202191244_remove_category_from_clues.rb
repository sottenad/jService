class RemoveCategoryFromClues < ActiveRecord::Migration
  def change
    remove_column :clues, :category, :string
  end
end

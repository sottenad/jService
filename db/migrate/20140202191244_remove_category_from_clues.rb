class RemoveCategoryFromClues < ActiveRecord::Migration[4.2]
  def change
    remove_column :clues, :category, :string
  end
end

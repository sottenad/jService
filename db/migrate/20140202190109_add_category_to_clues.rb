class AddCategoryToClues < ActiveRecord::Migration
  def change
    add_column :clues, :category, :string
  end
end

class AddCategoryToClues < ActiveRecord::Migration[4.2]
  def change
    add_column :clues, :category, :string
  end
end

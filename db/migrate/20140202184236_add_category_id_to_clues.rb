class AddCategoryIdToClues < ActiveRecord::Migration[4.2]
  def change
    add_column :clues, :category_id, :integer
  end
end

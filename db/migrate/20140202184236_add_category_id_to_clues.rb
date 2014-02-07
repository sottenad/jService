class AddCategoryIdToClues < ActiveRecord::Migration
  def change
    add_column :clues, :category_id, :integer
  end
end

class DeleteClueIdFromCategories < ActiveRecord::Migration[4.2]
  def change
  	remove_column :categories, :clue_id
  end
end

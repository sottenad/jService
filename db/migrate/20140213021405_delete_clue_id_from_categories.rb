class DeleteClueIdFromCategories < ActiveRecord::Migration
  def change
  	remove_column :categories, :clue_id
  end
end

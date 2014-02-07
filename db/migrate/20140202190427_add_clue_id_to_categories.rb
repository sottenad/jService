class AddClueIdToCategories < ActiveRecord::Migration
  def change
    add_column :categories, :clue_id, :integer
  end
end

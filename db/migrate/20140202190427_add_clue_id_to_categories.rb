class AddClueIdToCategories < ActiveRecord::Migration[4.2]
  def change
    add_column :categories, :clue_id, :integer
  end
end

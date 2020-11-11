class RemoveClueIdFromClues < ActiveRecord::Migration[4.2]
  def change
    remove_column :clues, :clue_id, :integer
  end
end

class RemoveClueIdFromClues < ActiveRecord::Migration
  def change
    remove_column :clues, :clue_id, :integer
  end
end

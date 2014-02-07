class DeleteClueIdFromClues < ActiveRecord::Migration
  def change
      remove_column :clue_id, :clues, :integer
  end
end

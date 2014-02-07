class AddClueIdToClues < ActiveRecord::Migration
  def change
    add_column :clues, :clue_id, :integer
  end
end

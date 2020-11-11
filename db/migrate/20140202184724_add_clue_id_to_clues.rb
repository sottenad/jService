class AddClueIdToClues < ActiveRecord::Migration[4.2]
  def change
    add_column :clues, :clue_id, :integer
  end
end

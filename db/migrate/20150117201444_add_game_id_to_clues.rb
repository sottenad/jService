class AddGameIdToClues < ActiveRecord::Migration[4.2]
  def change
    add_column :clues, :game_id, :integer
  end
end

class AddGameIdToClues < ActiveRecord::Migration
  def change
    add_column :clues, :game_id, :integer
  end
end

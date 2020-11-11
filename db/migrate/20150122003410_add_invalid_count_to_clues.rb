class AddInvalidCountToClues < ActiveRecord::Migration[4.2]
  def change
    add_column :clues, :invalid_count, :integer
  end
end

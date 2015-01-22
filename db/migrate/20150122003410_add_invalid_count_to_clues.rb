class AddInvalidCountToClues < ActiveRecord::Migration
  def change
    add_column :clues, :invalid_count, :integer
  end
end

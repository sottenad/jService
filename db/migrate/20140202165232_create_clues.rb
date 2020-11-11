class CreateClues < ActiveRecord::Migration[4.2]
  def change
    create_table :clues do |t|
      t.string :answer
      t.string :question
      t.integer :value
      t.datetime :airdate

      t.timestamps
    end
  end
end

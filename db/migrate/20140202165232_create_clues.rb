class CreateClues < ActiveRecord::Migration
  def change
    create_table :clues do |t|
      t.string :answer
      t.string :question
      t.integer :value
      t.string :category
      t.datetime :airdate

      t.timestamps
    end
  end
end

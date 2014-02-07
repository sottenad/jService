class CreateGameIds < ActiveRecord::Migration
  def change
    create_table :game_ids do |t|
      t.integer :id

      t.timestamps
    end
  end
end

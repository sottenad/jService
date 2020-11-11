class CreateIndices < ActiveRecord::Migration[4.2]
  def change
    create_table :indices do |t|

      t.timestamps
    end
  end
end

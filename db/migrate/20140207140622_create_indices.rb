class CreateIndices < ActiveRecord::Migration
  def change
    create_table :indices do |t|

      t.timestamps
    end
  end
end

class AddClueCount < ActiveRecord::Migration[4.2]
  def self.up
    add_column :categories, :clues_count, :integer, :default => 0
    
    Category.reset_column_information
    Category.all.each do |p|
      Category.reset_counters(p.id,:clues)
      #p.update_attribute :clues_count, p.clues.length
    end
  end

  def self.down
    remove_column :categories, :clues_count
  end
end
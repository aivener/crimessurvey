class AddFieldsToCrimes < ActiveRecord::Migration
  def change
  	add_column :crimes, :f, :integer
  	add_column :crimes, :s, :integer
  end
end

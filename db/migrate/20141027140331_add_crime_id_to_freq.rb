class AddCrimeIdToFreq < ActiveRecord::Migration
  def change
    add_column :freqs, :crime_id, :integer
  end
end

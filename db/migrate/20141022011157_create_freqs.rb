class CreateFreqs < ActiveRecord::Migration
  def change
    create_table :freqs do |t|
    	t.integer :rating
    	t.timestamps
    end
  end
end

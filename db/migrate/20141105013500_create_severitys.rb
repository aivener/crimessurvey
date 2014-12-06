class CreateSeveritys < ActiveRecord::Migration
  def change
    create_table :severitys do |t|
      t.integer :rating
      t.integer :crime_id
    end
  end
end

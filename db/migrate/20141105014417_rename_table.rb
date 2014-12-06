class RenameTable < ActiveRecord::Migration
  def change
  	rename_table :severitys, :severities
  end
end

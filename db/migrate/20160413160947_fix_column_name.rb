class FixColumnName < ActiveRecord::Migration
  def change
  	rename_column :lessons, :date, :title
  end
end

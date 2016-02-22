class RenameCountryInCharans < ActiveRecord::Migration
  def change
  	 rename_column :charans,:country,:current_country
  	 end
end

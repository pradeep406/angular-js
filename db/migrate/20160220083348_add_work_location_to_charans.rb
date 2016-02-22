class AddWorkLocationToCharans < ActiveRecord::Migration
  def change
  	 add_column :charans,:work_location,:string
  	end
  end


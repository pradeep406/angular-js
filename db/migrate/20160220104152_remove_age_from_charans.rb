class RemoveAgeFromCharans < ActiveRecord::Migration
  def change
  	remove_column :charans,:work_location,:string
  end
end

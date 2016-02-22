class CreateCharans < ActiveRecord::Migration
  def change
    create_table :charans do |t|
      t.string :first_name
      t.string :last_name
      t.string :country
      t.string :category
      
    end
  end
end

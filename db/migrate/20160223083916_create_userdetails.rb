class CreateUserdetails < ActiveRecord::Migration
  def change
    create_table :user_details do |t|
    	t.string :first_name
    	t.string :last_name
        t.string :location
        t.integer :age
        t.integer :salary
        t.integer :emp_id
        t.string :branch   
    end
  end
end

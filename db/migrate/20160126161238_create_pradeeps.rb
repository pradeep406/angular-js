class CreatePradeeps < ActiveRecord::Migration
  def change
    create_table :pradeeps do |t|
      t.string :name
      t.integer :age

      t.timestamps
    end
  end
end

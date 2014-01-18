class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :name
      t.integer :city_id
      t.integer :age

      t.timestamps
    end
  end
end

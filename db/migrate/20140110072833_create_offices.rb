class CreateOffices < ActiveRecord::Migration
  def change
    create_table :offices do |t|
      t.integer :employee_id
      t.integer :position_id
      t.integer :salary_id
      t.integer :city_id
      t.integer :mobile

      t.timestamps
    end
  end
end

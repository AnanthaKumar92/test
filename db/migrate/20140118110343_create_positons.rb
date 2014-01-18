class CreatePositons < ActiveRecord::Migration
  def change
    create_table :positons do |t|
      t.string :work_position

      t.timestamps
    end
  end
end

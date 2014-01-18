class CreateOnlyLayoutFluids < ActiveRecord::Migration
  def change
    create_table :only_layout_fluids do |t|
      t.string :name
      t.integer :age
      t.string :qualification
      t.text :description

      t.timestamps
    end
  end
end

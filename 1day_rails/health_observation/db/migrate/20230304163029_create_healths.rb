class CreateHealths < ActiveRecord::Migration[7.0]
  def change
    create_table :healths do |t|
      t.string :year
      t.string :school_class
      t.string :class_number
      t.string :name
      t.integer :commute
      t.string :temperature
      t.text :etc

      t.timestamps
    end
  end
end

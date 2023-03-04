class CreateHealths < ActiveRecord::Migration[7.0]
  def change
    create_table :healths do |t|
      t.integer :year
      t.integer :school_class
      t.integer :class_number
      t.string :name

      t.timestamps
    end
  end
end

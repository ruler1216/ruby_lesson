class CreateHealths < ActiveRecord::Migration[7.0]
  def change
    create_table :healths do |t|
      t.string :year
      t.string :class
      t.integer :number
      t.string :name

      t.timestamps
    end
  end
end

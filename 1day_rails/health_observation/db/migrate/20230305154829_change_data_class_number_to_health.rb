class ChangeDataClassNumberToHealth < ActiveRecord::Migration[7.0]
  def change
    change_column :healths, :class_number, :integer
  end
end

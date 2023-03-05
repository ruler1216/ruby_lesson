class AddsaveTimeToHealth < ActiveRecord::Migration[7.0]
  def change
    add_column :healths, :save_column, :string
  end
end

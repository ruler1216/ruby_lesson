class ChangeDataTemperatureToHealth < ActiveRecord::Migration[7.0]
  def change
    change_column :healths, :temperature, :integer
  end
end

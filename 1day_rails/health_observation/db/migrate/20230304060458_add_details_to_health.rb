class AddDetailsToHealth < ActiveRecord::Migration[7.0]
  def change
    add_column :healths, :commute, :integer
    add_column :healths, :temperature, :string
    add_column :healths, :etc, :text
  end
end

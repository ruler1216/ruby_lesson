class ChangeHealthyearTostring < ActiveRecord::Migration[7.0]
  def change
    change_column :healths, :year, :string
    #Ex:- change_column("admin_users", "email", :string, :limit =>25)
  end
end

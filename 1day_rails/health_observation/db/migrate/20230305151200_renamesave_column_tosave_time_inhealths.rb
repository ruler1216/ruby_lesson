class RenamesaveColumnTosaveTimeInhealths < ActiveRecord::Migration[7.0]
  def change
    rename_column :healths, :save_column, :save_time
    #Ex:- rename_column("admin_users", "pasword","hashed_pasword")
  end
end

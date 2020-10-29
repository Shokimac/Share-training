class AddLeaderFlgToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :leader_flg, :boolean, default: :false
  end
end

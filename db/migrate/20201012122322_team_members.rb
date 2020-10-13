class TeamMembers < ActiveRecord::Migration[5.2]
  def change
    drop_table :team_members
  end
end

class CreateTeamMembers < ActiveRecord::Migration[5.2]
  def change
    create_table :team_members do |t|
      t.integer :user_id, default: 0, null: false
      t.integer :team_id, default: 0, null: false
      t.boolean :leader_flg, default: false, null: false
      t.timestamps
    end
  end
end

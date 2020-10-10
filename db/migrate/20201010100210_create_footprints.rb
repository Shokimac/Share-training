class CreateFootprints < ActiveRecord::Migration[5.2]
  def change
    create_table :footprints do |t|
      t.integer :user_id, default: 0, null: false
      t.integer :team_id, default: 0, null: false
      t.timestamps
    end
  end
end

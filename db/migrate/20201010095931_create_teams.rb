class CreateTeams < ActiveRecord::Migration[5.2]
  def change
    create_table :teams do |t|
      t.string :name
      t.text :introduction
      t.integer :genre_id, default: 0, null: false
      t.string  :image_id
      t.timestamps
    end
  end
end

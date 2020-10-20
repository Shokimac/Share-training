class CreateTrainigGenres < ActiveRecord::Migration[5.2]
  def change
    create_table :trainig_genres do |t|
      t.integer :user_id, default: 0, null: false
      t.string :name
      t.timestamps
    end
  end
end

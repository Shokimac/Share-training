class CreateTrainingGenres < ActiveRecord::Migration[5.2]
  def change
    create_table :training_genres do |t|

      t.timestamps
    end
  end
end

class AddTrainingGenreIdToTrainingRecords < ActiveRecord::Migration[5.2]
  def change
    add_column :training_records, :training_genre_id, :integer
  end
end

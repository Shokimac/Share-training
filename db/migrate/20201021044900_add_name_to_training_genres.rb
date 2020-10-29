class AddNameToTrainingGenres < ActiveRecord::Migration[5.2]
  def change
    add_column :training_genres, :user_id, :integer
    add_column :training_genres, :name, :string
  end
end
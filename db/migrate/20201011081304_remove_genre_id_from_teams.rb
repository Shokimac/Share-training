class RemoveGenreIdFromTeams < ActiveRecord::Migration[5.2]
  def change
    remove_column :teams, :genre_id, :integer
  end
end

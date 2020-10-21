class RemoveEventFromTrainingRecords < ActiveRecord::Migration[5.2]
  def change
    remove_column :training_records, :event, :string
  end
end

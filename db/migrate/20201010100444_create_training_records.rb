class CreateTrainingRecords < ActiveRecord::Migration[5.2]
  def change
    create_table :training_records do |t|
      t.integer :user_id, default: 0, null: false
      t.string :event
      t.string :body
      t.text :comment
      t.timestamps
    end
  end
end

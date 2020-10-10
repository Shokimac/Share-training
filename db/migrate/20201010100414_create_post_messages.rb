class CreatePostMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :post_messages do |t|
      t.integer :user_id, default: 0, null: false
      t.integer :team_id, default: 0, null: false
      t.text :body
      t.timestamps
    end
  end
end

class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string  :name,               null: false, default: ""
      t.string  :email
      t.string  :goal
      t.string  :password
      t.string  :image_id
      t.timestamps
    end
  end
end
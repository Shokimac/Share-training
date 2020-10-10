class CreateFootprints < ActiveRecord::Migration[5.2]
  def change
    create_table :footprints do |t|

      t.timestamps
    end
  end
end

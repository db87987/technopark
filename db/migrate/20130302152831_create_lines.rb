class CreateLines < ActiveRecord::Migration
  def change
    create_table :lines do |t|
      t.attachment :img
      t.text :text
      t.integer :block_id

      t.timestamps
    end
  end
end

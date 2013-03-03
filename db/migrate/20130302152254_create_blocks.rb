class CreateBlocks < ActiveRecord::Migration
  def change
    create_table :blocks do |t|
      t.string :title
      t.attachment :img
      t.integer :category_id

      t.timestamps
    end
  end
end

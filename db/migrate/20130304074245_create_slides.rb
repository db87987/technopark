class CreateSlides < ActiveRecord::Migration
  def change
    create_table :slides do |t|
      t.integer :sn
      t.attachment :img

      t.timestamps
    end
  end
end

class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.attachment :img
      t.text :text
      t.integer :category_id
      t.attachment :img
      t.attachment :img
      t.attachment :img
      
      t.timestamps
    end
  end
end

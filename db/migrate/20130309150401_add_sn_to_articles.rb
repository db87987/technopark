class AddSnToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :sn, :integer
  end
end

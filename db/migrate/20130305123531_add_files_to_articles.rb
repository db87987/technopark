class AddFilesToArticles < ActiveRecord::Migration
  def change
    add_attachment :articles, :file1
    add_attachment :articles, :file2
    add_attachment :articles, :file3
  end
end

class AddShortToEvents < ActiveRecord::Migration
  def change
    add_column :events, :short, :text
  end
end

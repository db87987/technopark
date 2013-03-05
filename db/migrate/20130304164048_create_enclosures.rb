class CreateEnclosures < ActiveRecord::Migration
  def change
    create_table :enclosures do |t|
      t.string :title
      t.attachment :attachment
      t.references :attachable, :polymorphic => true

      t.timestamps
    end
  end
end


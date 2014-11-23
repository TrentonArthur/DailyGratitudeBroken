class Entry < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.text :dayEntry
      t.string :image
      t.timestamps
    end
  end
end

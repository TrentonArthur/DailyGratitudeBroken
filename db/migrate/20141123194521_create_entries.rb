class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.test :text
      t.integer :user
      t.string :image

      t.timestamps

    end
  end
end

class CreateShares < ActiveRecord::Migration
  def change
    create_table :shares do |t|
      t.integer :shareowner
      t.integer :sharewith
      t.integer :entryid

      t.timestamps

    end
  end
end

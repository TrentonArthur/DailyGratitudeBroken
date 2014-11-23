class ChangeEntriesName < ActiveRecord::Migration
  def change
        rename_table :entrys, :entries
  end
end

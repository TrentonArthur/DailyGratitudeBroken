class AddUser < ActiveRecord::Migration
  def change
    add_column :entries, :user, :integer
  end
end

class ChangeColumn < ActiveRecord::Migration
  def up
    change_column :users, :admin, :boolean, default: false
    change_column :users, :access_level, :integer, default: 1
    change_column :posts, :restricted_level, :integer, default: 0
  end

  def down
    change_column :users, :admin, :boolean, default: nil
    change_column :users, :access_level, :integer, default: nil
    change_column :posts, :restricted_level, :integer, default: nil
  end
end

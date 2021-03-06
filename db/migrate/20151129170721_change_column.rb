class ChangeColumn < ActiveRecord::Migration
  def up
    change_column :users, :admin, :boolean, default: false
    change_column :posts, :post_type_id, :integer, default: 1
    change_column :posts, :access_level_id, :integer, default: 1
    change_column :users, :access_level_id, :integer, default: 1
  end

  def down
    change_column :users, :admin, :boolean, default: nil
    change_column :posts, :post_type_id, :integer, default: nil
    change_column :posts, :access_level_id, :integer, default: nil
    change_column :users, :access_level_id, :integer, default: nil
  end
end

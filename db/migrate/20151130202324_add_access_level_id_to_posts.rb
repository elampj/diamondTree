class AddAccessLevelIdToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :access_level_id, :string
  end
end

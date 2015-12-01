class AddAccessLevelIdToUsers < ActiveRecord::Migration
  def change
    add_column :users, :access_level_id, :integer
  end
end

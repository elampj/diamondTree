class AddRestrictedLevelToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :restricted_level, :integer
  end
end

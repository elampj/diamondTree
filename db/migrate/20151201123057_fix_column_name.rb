class FixColumnName < ActiveRecord::Migration
  def change
    rename_column :users, :access_level, :old_access_level
  end
end

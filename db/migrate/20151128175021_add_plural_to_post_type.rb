class AddPluralToPostType < ActiveRecord::Migration
  def change
    add_column :post_types, :plural, :text
  end
end

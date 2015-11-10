class AddPriorityToPostSections < ActiveRecord::Migration
  def change
    add_column :post_sections, :priority, :integer
  end
end

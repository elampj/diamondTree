class CreatePostSections < ActiveRecord::Migration
  def change
    create_table :post_sections do |t|

      t.string :title
      t.string :icon
      t.text :summary
      t.text :additional_text
      t.integer :post_id

      t.timestamps null: false
    end
  end
end

class CreateMatchCategories < ActiveRecord::Migration
  def change
    create_table :match_categories do |t|
      t.integer :match_category_id
      t.string :name

      t.timestamps null: false
    end
  end
end

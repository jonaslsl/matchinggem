class CreateCriteria < ActiveRecord::Migration
  def change
    create_table :criteria do |t|
      t.string :name
      t.references :category, index: true, foreign_key: true, null: false

      t.timestamps null: false
    end
  end
end

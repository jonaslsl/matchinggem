class CreateMatchCriteria < ActiveRecord::Migration
  def change
    create_table :match_criteria do |t|
      t.string :title
      t.references :match_category, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

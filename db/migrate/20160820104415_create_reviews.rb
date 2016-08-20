class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.integer :star
      t.text :content
      t.string :emogi
      t.references :agent, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

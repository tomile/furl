class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.text :content
      t.references :agent, index: true, foreign_key: true
      t.references :referral, index: true, foreign_key: true
      t.references :prospect, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

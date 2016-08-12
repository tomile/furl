class CreateProspects < ActiveRecord::Migration
  def change
    create_table :prospects do |t|
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.string :email
      t.string :phone
      t.text :notes
      t.string :zip
      t.references :agent, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

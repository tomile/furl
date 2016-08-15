class CreateAreas < ActiveRecord::Migration
  def change
    create_table :areas do |t|
      t.integer :zipcode

      t.timestamps null: false
    end
  end
end

class CreateAgents < ActiveRecord::Migration
  def change
    create_table :agents do |t|
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.string :picture
      t.string :bio
      t.string :phone
      t.string :email
      t.string :website
      t.integer :count_click_to_contact
      t.integer :count_click_to_accept
      t.integer :count_closed

      t.timestamps null: false
    end
  end
end

class CreateReferrals < ActiveRecord::Migration
  def change
    create_table :referrals do |t|
      t.integer :agent_sending_id
      t.integer :agent_receiving_id
      t.references :prospect, index: true, foreign_key: true
      t.integer :status

      t.timestamps null: false
    end
  end
end

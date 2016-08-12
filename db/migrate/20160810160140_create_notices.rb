class CreateNotices < ActiveRecord::Migration
  def change
    create_table :notices do |t|
      t.references :referral, index: true, foreign_key: true
      t.integer :agent_receiving_id
      t.integer :commission
      t.integer :status

      t.timestamps null: false
    end
  end
end

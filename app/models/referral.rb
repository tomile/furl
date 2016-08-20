class Referral < ActiveRecord::Base
  belongs_to :agent_sending, class_name: 'Agent', foreign_key: :agent_sending_id 
  belongs_to :agent_receiving, class_name: 'Agent', foreign_key: :agent_receiving_id
  belongs_to :prospect
  has_many :notices
  has_many :notes
end

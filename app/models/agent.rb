class Agent < ActiveRecord::Base
	has_many :prospects
	has_many :referrals_sent, class_name: 'Referral', foreign_key: :agent_sending_id
	has_many :referrals_recieved, class_name: 'Referral', foreign_key: :agent_receiving_id
	has_many :areas

	mount_uploader :picture, PictureUploader
end

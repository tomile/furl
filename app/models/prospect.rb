class Prospect < ActiveRecord::Base
  belongs_to :agent
  has_many :referrals
  has_many :notes
end

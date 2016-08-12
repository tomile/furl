class Prospect < ActiveRecord::Base
  belongs_to :agent
  has_many :referrals
end

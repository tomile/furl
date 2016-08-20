class Note < ActiveRecord::Base
  belongs_to :agent
  belongs_to :referral
  belongs_to :prospect
end

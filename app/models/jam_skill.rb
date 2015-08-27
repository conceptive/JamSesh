class JamSkill < ActiveRecord::Base
	has_many :jams
	has_many :users
end

class Crime < ActiveRecord::Base
	has_many :freqs
	has_many :severities
end

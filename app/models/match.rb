class Match < ApplicationRecord
	has_many :links
	has_many :players, through: :links
end

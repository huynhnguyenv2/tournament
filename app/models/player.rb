class Player < ApplicationRecord
	belongs_to :group
	has_many :links 
	has_many :matchs, through: :links
end

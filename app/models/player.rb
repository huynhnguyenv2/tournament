class Player < ApplicationRecord
	belongs_to :group
	has_many :home_match, class_name: "Link", foreign_key: "player_one_id" 
  has_many :visiting_match, class_name: "Link", foreign_key: "player_two_id" 
	has_many :matchs, through: :links
end

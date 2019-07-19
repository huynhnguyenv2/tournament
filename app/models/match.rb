class Match < ApplicationRecord
	has_one :link
  has_one :player_one, through: :link, class_name: "Player", foreign_key: "player_own_id"
  has_one :player_two, through: :link, class_name: "Player", foreign_key: "player_two_id"
end

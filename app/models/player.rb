class Player < ApplicationRecord
	belongs_to :group
	has_many :home_yards, class_name: "Link", foreign_key: "player_one_id" 
  has_many :visit_yards, class_name: "Link", foreign_key: "player_two_id" 
  has_many :links, ->(player) { unscope(where: :player_id).where("player_one_id = ? OR player_two_id = ?", player.id, player.id) }, class_name: 'Link'

	has_many :matches, through: :home_yards
end

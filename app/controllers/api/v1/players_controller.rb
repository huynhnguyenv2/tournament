module Api
	module V1	
		class PlayersController < ApplicationController
      def index 
        players = Player.includes(:group).all
        
        players = players.map do |player|
          infoPlayer(player)
        end
        
        render json: {status: 'SUCCESS', message: 'Loaded players', data: players}
      end

      def show
        player = Player.includes(:group).find(params[:id])
        
        render json: {status: 'SUCCESS', message: 'Loaded the player', data: infoPlayer(player)}
      end

      def showName
        player = Player.includes(:group).find_by(name: params[:name])
        
        render json: {status: 'SUCCESS', message: 'Loaded the player', data: infoPlayer(player)}
      end

      private
      def infoPlayer(player)
        return {
                id: player.id,
                name: player.name,
                group: player.group.name, 
                point: getPoint(player.id), 
                won: getResult(player.id, 3), 
                lost: getResult(player.id, 0),
                drawn: getResult(player.id, 1)
              }
      end

      def getPoint(id)
        Link.where(player_one_id: id).includes(:match).sum("point_1") + Link.where(player_two_id: id).includes(:match).sum("point_2")
      end 

      def getResult(id, point)
        return Link.includes(:match).where(player_one_id: id, matches: {point_1: point}).count
               + Link.includes(:match).where(player_two_id: id, matches: {point_2: point}).count
      end
		end
  end
end

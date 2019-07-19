module Api
	module V1
		class MatchesController < ApplicationController
      def index 
        matches = Match.all
        matches = matches.map{ |match| cvMatch(match) }
        render json: {status: 'SUCCESS', message: 'Loaded matches', data: matches}
      end

      def show
        match = Match.find(params[:id])      
        render json: {status: 'SUCCESS', message: 'Loaded the match', data: cvMatch(match)}
      end

      def showTour
        matches = Competition.find_by(name: params[:name]).matches
        matches = matches.map{ |match| cvMatch(match) }
        render json: {status: 'SUCCESS', message: 'Loaded matches', data: temp}
      end 

      def showPlayer
        matches = Player.find_by(name: params[:name]).matches
        matches = matches.map{ |match| cvMatch(match) }
        render json: {status: 'SUCCESS', message: 'Loaded matches', data: matches}
      end

      private 
      def cvMatch(match)
        return {player_one: match.player_one.name, player_two: match.player_two.name , time: match.time, date: match.date, venue: match.venue, point_1: match.point_1, point_2: match.point_2 }
      end 
      
		end
	end
end

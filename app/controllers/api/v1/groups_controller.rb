module Api
	module V1
		class GroupsController < ApplicationController
      def index 
        groups = Group.all
        render json: {status: 'SUCCESS', message: 'Loaded groups', data: groups}
      end
		end
	end
end

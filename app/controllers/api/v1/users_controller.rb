class Api::V1::UsersController < ApplicationController

    def index
        @user = User.all
    
        render json: @user
      end
    
      def create
        # look up if I should get a JS date from front end or use rails datetime
        user = User.create!(
            steps: params['steps']['steps']
        )
      end
    end
end
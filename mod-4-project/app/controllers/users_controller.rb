class UsersController < ApplicationController

    def index 
        users = User.all 

        render json: users
    end

    def new
        user = User.new 
    end

    def create
        user = User.create(user_params)
    end

    private

    def user_params
        params.require(:user).permit(:name, :email, :password, :github_link, :skills)
    end

end

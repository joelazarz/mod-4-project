class UsersController < ApplicationController

    def index 
        users = User.all 

        render json: users
    end

    def show
        user = User.find(params[:id])

        render json: user
    end

    def new
        user = User.new 
    end

    def create
        user = User.new(name: params[:name], email: params[:email], password: params[:password])

        if user.save
            render json: user
        else
            render json: {errors: user.errors.full_messages}
        end
    end

    private

    def user_params
        params.require(:user).permit(:name, :email, :password_digest, :github_link, :skills)
    end

end

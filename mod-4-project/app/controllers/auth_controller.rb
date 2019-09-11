class AuthController < ApplicationController

    def login
        user = User.find_by(email: params[:email])
        if user && user.authenticate(params[:password])
            render json: {user: user, token: JWT.encode({userId: user.id}, 'secret')}
        else
            render json: {errors: 'Please enter the correct email and password '}
        end
    end

    def autologin
        token = request.headers['Authorization']
        user_id = JWT.decode(token, 'secret')["userId"]
        user = User.find(user_id)

        render json: user
    end


end
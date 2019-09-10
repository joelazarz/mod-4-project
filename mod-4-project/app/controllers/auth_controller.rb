class AuthController < ApplicationController

    def login

        #request headers
        #authenticate password
        user = User.find_by(email: params[:email])
        byebug
        if user && user.authenticate(params[:password])
            render json: user
        else
            render json: {errors: 'Please enter the correct email and password '}
        end
    end


end
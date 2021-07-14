class PasswordResetsController < ApplicationController

    def new
    end

    def create
        @user = User.find_by(id: params[:email])

        if @user.present?
            #send email
            redirect_to root_path, notice: 'If an account with that email has been found, we have sentt you a link to reset your password'
        else
            
        end
    end
end
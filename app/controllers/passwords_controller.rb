class PasswordsController < ApplicationController
    before_action :require_user_logged_in!

    def edit
        #@user = User.find_by(id: session[:user_id])
    end

    def update
        if Current.user.update(password_params)
            redirect_to root_path, notice: 'Password updated'
        else
            render :edit
        end
    end

    private

    def password_params
        params.require(:user).permit(:password, :password_confirmation)
    end
end
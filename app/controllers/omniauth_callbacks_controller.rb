class OmniAuthCallbacksController < ApplicationController
    def twitter
        # render plain: 'success!'
        Rails.logger.info auth
        
        Current.user.twitter_accounts.create(
            name: auth.info.name,
            username: auth.info.nickname,
            image: auth.info.image,
            token: auth.credentials.token,
            secret: auth.credentials.secret,
        )
    end

    def auth
        request.env('omniauth.auth')
    end
end
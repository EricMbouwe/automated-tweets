class OmniAuthCallbacksController < ApplicationController
    def twitter
        render plain: 'success!'
    end
end
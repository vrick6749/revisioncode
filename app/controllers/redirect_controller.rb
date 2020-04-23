class RedirectController < ApplicationController

    def from
        redirect_to "/redirectedto"
    end

    def to
        render plain: "You are redirected here"
    end
end
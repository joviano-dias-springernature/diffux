class InternalController < ApplicationController

    def status
        render :json => { "contact": { "email-address": "springerqa@googlegroups.com" } }, :status => 200
    end
end
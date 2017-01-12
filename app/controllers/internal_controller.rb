class InternalController < ApplicationController

    def config_impl
        render :json => { "key": "value" }, :status => 200
    end

    def status
        render :json => { "contact": { "email-address": "springerqa@googlegroups.com" } }, :status => 200
    end

    def version
        render :json => { "revision": "GIT_REVISION" }, :status => 200
    end
end
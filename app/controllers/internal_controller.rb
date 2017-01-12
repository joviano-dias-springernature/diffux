class InternalController < ApplicationController

    def status
        render :nothing => true, :status => 200
    end
end
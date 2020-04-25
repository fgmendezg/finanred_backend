class FdnamedocsController < ApplicationController
    
    # GET /dogs
    def index
        @namedocs = Fdnamedoc.all
        render json: @namedocs, include: []
    end
    
end

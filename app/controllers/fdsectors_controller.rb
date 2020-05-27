class FdsectorsController < ApplicationController
    before_action :authenticate_fdusuario, only: [ :index ]

    # GET 
    def index
        @sectores = Fdsector.all
        render json: @sectores, include: []
    end
end

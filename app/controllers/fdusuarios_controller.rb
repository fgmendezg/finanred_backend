class FdusuariosController < ApplicationController
     # GET /dogs
     def index
        @usuarios = Fdnamedoc.all
        render json: @usuarios, include: []
    end
end

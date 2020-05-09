class FdusuariosController < ApplicationController
     # GET 
     def index
        @usuarios = Fdusuario.all
        render json: @usuarios, include: []
    end

    def create
        @usuario = Fdusuario.new(user_params_standard)
        if @usuario.save
            render json: @usuario, status:201
        else
            # TODO: Capturar error, si ya existe el usuario, etc
            # y enviarlo al front de forma controlada
            render json: @usuario.errors, status: :unprocessable_entity
        end
    end

    # Para crear usuario de forma standard con contraseña
    # TODO: Agregar la contraseña
    def user_params_standard
        params.permit( :email, :primer_nombre, :segundo_nombre, :primer_apellido, :segundo_apellido, :password )
    end

    # POST
    # Login desde terceros como google o facebook
    # Verifica si el email recibido esta registrado, si no lo esta lo 
    # registra en base de datos. Si lo esta trae los sus datos almacenados.
    def loginMediator
        @usuario = Fdusuario.where( email: params[:email] )
        #puts params[:email]
        if @usuario.blank?
            puts "fdusers#loginMediator: No se encontro usuario con ese email " + params[:email]
            createFederated()
        else
            puts "False"
            render json: @usuarios, include: []
        end
    end

    # Crear usuario con datos basicos
    # sin tener en cuenta la contraseña ya que es un login federado
    def createFederated
        @usuario = Fdusuario.new(user_params)
        if @usuario.save
            render json: @usuario, status:201
        else
            # TODO: Capturar error, si ya existe el usuario, etc
            # y enviarlo al front de forma controlada
            render json: @usuario.errors, status: :unprocessable_entity
        end
    end


    # Parametros para crear usuarios federado
    def user_params
        params.permit( :email, :primer_nombre, :segundo_nombre, :primer_apellido, :segundo_apellido )
    end

end

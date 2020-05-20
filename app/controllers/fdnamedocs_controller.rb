class FdnamedocsController < ApplicationController
    before_action :authenticate_fdusuario, only: [ :index, :create ]

    # GET
    def index
        @namedocs = Fdnamedoc.all
        render json: @namedocs, include: []
    end
    
    # POST
    def create
        # Verificar usuario
        if ( current_fdusuario == nil )
            puts "Usuario no encontrado en el momento de crear el archivo"
            render json: "Usuario no encontrado en el momento de crear el archivo", include: [], status:404
        else
            # Verificar que la ruta de usuario exista, si no crearla
            if current_fdusuario.ruta_docs == nil
                # Crear ruta y modificar el usuario
                puts "Creando ruta para guardar atchivos de usuario"
                puts Fdusuario.crearRutaDoc(current_fdusuario.id)
            end
            
            render json: current_fdusuario, include: [], status:201
        end
    end

end

class FdnamedocsController < ApplicationController
    before_action :authenticate_fdusuario, only: [ :index, :create ]

    # GET
    def index
        @namedocs = Fdnamedoc.all
        render json: @namedocs, include: []
    end
    
    # POST
    def create
        #TODO: Crear rutas repetidas apuntando al mismo archivo, esto no deberia pasar es decir 
        #se puede ejecutar el mismo create varia veces, si se usa uniqueness en :namedoc no sube correctamente el archivo
        puts "CREANDO FDNAMEDOC:"
        rute = "";
        # Verificar usuario
        if ( current_fdusuario == nil )
            puts "Usuario no encontrado en el momento de crear el archivo"
            render json: "Usuario no encontrado en el momento de crear el archivo", include: [], status:404
        else
            # Verificar que la ruta de usuario exista, si no crearla
            if current_fdusuario.ruta_docs == nil
                # Crear ruta y modificar el usuario
                puts "Creando ruta para guardar archivos de usuario"
                rute = Fdusuario.crearRutaDoc(current_fdusuario.id)
                puts rute
            else
                rute = Fdusuario.getRutaDoc(current_fdusuario.id)
                puts rute
            end
            
        end

        # Guardar Archivo
        @doc = Fdnamedoc.new(namedoc: params[:namedoc], fdusuario_id: current_fdusuario.id, rute: rute, name: params[:name] )
        #render json: @doc, status:201
        if @doc.save
            render json: @doc, status:201
        else
            # TODO: Captura de error
            render json: @doc.errors, status: :unprocessable_entity
        end
    end

end

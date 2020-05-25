class FdnamedocsController < ApplicationController
    before_action :authenticate_fdusuario, only: [ :index, :createIntelligent, :destroy ]

    # GET
    def index
        @namedocs = Fdnamedoc.all
        render json: @namedocs, include: []
    end

    #POST
    def createIntelligent
        # Verificar si no existe ya el archivo, si existe se actualiza en vez de crearlo
        @doc = Fdnamedoc.find_by(fdusuario_id: current_fdusuario.id, name: params[:name])
        if (@doc == nil)
            # Es nulo asi que se crea un nuevo doc
            create
        else
            # Se actualiza
            update
        end
    end
    
    # POST
    def create

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

    #PATCH
    # Actualiza el archivo
    def update
        @doc = Fdnamedoc.find_by(fdusuario_id: current_fdusuario.id, name: params[:name])
        if @doc.update_attributes(doc_update_params)
            render json: @doc, include: []
        else
            render json: @doc.errors
        end
    end

    # datos necesarios para update
    def doc_update_params
        params.permit( :namedoc )
    end

    #DELETE
    def destroy
        @doc = Fdnamedoc.find_by(fdusuario_id: current_fdusuario.id, name: params[:name])
        if(@doc == nil)
            # El doc no exite
            render json: "El documento que quiere eliminar no existe", status: :not_found 
        else
            # Eliminar archivo
            if @doc.destroy
                render json: @doc, include: []
            else
                render json: @doc.errors
            end
        end
    end

    private :create, :update, :doc_update_params
end

class TareasController < ApplicationController
  
  def index
  	@tareas = Tarea.all
  	#select * from tareas
  end

  def new
  	@tarea = Tarea.new

  end

  	def create
  		@tarea= Tarea.new(titulo: params[:tarea][:titulo], descripcion: params[:tarea][:descripcion])
        
        if @tarea.save 
        #insert into tareas (titulo,descripcion) values (formulario)
        redirect_to controller: 'tareas', action: 'show', id: @tarea.id
        else
        render :new
        end
  	end
   
   def show
      @tarea = Tarea.find(params[:id])
      #select * from tareas where id=:id
    end

    def destroy
      @tarea = Tarea.find(params[:id]) #Ruta
      @tarea.destroy                  #Eliminar
      redirect_to controller:"tareas", action: "index" #ir a la pg principal
    end
    
    def edit
      @tarea = Tarea.find(params[:id]) #Ruta
    end 
    
    def update
      @tarea = Tarea.find(params[:id]) #Ruta
      if  @tarea.update(titulo: params[:tarea][:titulo], descripcion: params[:tarea][:descripcion])
          redirect_to controller: "tareas", action: "show", id: @tarea.id
        else
          render :edit
      end
    end	

end

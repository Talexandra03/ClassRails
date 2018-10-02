class TareasController < ApplicationController
  def index
  	@tareas = Tarea.all
  	#select * from tareas
  end
  def new
  	@tarea = Tarea.new

  	def create
  		
  	end
  	
  end
end

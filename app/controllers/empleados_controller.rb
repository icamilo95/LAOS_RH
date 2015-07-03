class EmpleadosController < ApplicationController
  
  def index
      @empleados = Empleado.all
  end

  def new
      @empleado = Empleado.new
  end

  def create
      @empleado = Empleado.new empleado_params
      if @empleado.save
         redirect_to root_path
      else
         render :new
      end
  end

  def edit
  end

  def show
  end

  def update
  end

  private

  def empleado_params
      params.require(:empleado).permit(:nombres, :apellidos, :cedula)
  end

end

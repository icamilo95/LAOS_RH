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
   @empleado = Empleado.find params[:id]
  end

  def show
   @empleado = Empleado.find params[:id]
  end

  def update
      @empleado = Empleado.find params[:id]
      if @empleado.update_attributes empleado_params
         redirect_to root_path
      else
         render :edit
      end
  end

  def destroy
      empleado = Empleado.find params[:id]
      empleado.destroy
      redirect_to empleados_path
  end

  private

  def empleado_params
      params.require(:empleado).permit(:nombres, :apellidos, :cedula, :ciudad, :sexo, :cargo, :puesto)
  end

end

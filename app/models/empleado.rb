class Empleado < ActiveRecord::Base
   validates :nombres, :apellidos, :cedula, presence: true, absence: false
   validates :cedula, uniqueness: true, numericality: true
end

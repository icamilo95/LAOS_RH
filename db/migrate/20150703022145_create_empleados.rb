class CreateEmpleados < ActiveRecord::Migration
  def change
    create_table :empleados do |t|
      t.string :nombres
      t.string :apellidos
      t.integer :cedula
      t.string :ciudad
      t.string :sexo
      t.string :cargo
      t.string :puesto

      t.timestamps null: false
    end
  end
end

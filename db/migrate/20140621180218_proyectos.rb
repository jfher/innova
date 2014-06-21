class Proyectos < ActiveRecord::Migration
  def change
  	add_reference :proyectos, :equipo, index: true
  end
end

class Relation2 < ActiveRecord::Migration
  def change
  	add_reference :users, :equipo, index: true
  end
end

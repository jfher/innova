class CreateEquipos < ActiveRecord::Migration
  def change
    create_table :equipos do |t|
      t.string :name

      t.timestamps
    end
  end
end

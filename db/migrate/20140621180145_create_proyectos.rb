class CreateProyectos < ActiveRecord::Migration
  def change
    create_table :proyectos do |t|
      t.string :name
      t.boolean :state

      t.timestamps
    end
  end
end

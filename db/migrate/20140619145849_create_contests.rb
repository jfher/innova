class CreateContests < ActiveRecord::Migration
  def change
    create_table :contests do |t|
      t.string :name
      t.string :category
      t.string :start_date
      t.string :end_date

      t.timestamps
    end
  end
end

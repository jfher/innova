class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.string :name_of_sponsor
      t.string :start_date
      t.string :end_date
      t.string :state
      t.references :contest, index: true

      t.timestamps
    end
  end
end

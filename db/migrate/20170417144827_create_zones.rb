class CreateZones < ActiveRecord::Migration
  def change
    create_table :zones do |t|
      t.string :zonea
      t.string :zoneb
      t.string :zonec

      t.timestamps null: false
    end
  end
end

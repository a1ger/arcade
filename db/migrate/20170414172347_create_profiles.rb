class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :firstname
      t.string :lastname
      t.integer :phone
      t.string :email

      t.timestamps null: false
    end
  end
end

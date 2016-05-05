class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.string :name
      t.date :birthday
      t.string :nss
      t.string :curp

      t.timestamps null: false
    end
  end
end

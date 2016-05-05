class CreateRegisters < ActiveRecord::Migration
  def change
    create_table :registers do |t|
      t.integer :patientId
      t.integer :vaccineId
      t.integer :doctorId
      t.integer :dosisNumber

      t.timestamps null: false
    end
  end
end

class CreateRegisters < ActiveRecord::Migration
  def change
    create_table :registers do |t|
      t.integer :patient_id
      t.integer :vaccine_id
      t.integer :doctor_id
      t.integer :dosis_number

      t.timestamps null: false
    end
  end
end

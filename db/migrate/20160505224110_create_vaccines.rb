class CreateVaccines < ActiveRecord::Migration
  def change
    create_table :vaccines do |t|
      t.string :name
      t.string :controlNumber
      t.string :description

      t.timestamps null: false
    end
  end
end

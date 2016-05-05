class CreateAplicators < ActiveRecord::Migration
  def change
    create_table :aplicators do |t|
      t.string :name
      t.string :prefix
      t.string :clinic
      t.string :cedProf

      t.timestamps null: false
    end
  end
end

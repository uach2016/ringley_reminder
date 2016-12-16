class CreateCharges < ActiveRecord::Migration[5.0]
  def change
    create_table :charges do |t|
      t.string :estate_code
      t.string :period
      t.date :due_date

      t.timestamps
    end
  end
end

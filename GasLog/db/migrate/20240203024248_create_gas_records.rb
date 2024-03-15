class CreateGasRecords < ActiveRecord::Migration[7.0]
  def change
    create_table :gas_records do |t|
      t.float :quantity
      t.float :price
      t.date :date
      t.float :km_inicial
      t.float :km_final

      t.timestamps
    end
  end
end

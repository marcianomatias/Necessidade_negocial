class CreateContaCorrentes < ActiveRecord::Migration[7.0]
  def change
    create_table :conta_correntes do |t|
      t.decimal :saldo
      t.references :cliente, null: false, foreign_key: true
      t.float :numero
      t.string :agencia

      t.timestamps
    end
  end
end

class CreateEntries < ActiveRecord::Migration[5.2]
  def change
    create_table :entries do |t|
      t.references :account, foreign_key: true
      t.references :member, foreign_key: true
      t.string :voucher_type, nil: false
      t.string :voucher_date, nil: false
      t.string :voucher_number, nil: false
      t.decimal :debit
      t.decimal :credit

      t.timestamps
    end
  end
end

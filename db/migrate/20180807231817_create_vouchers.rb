class CreateVouchers < ActiveRecord::Migration[5.2]
  def change
    create_table :vouchers do |t|
      t.string :number
      t.string :date
      t.string :type
      t.string :explantion
      t.decimal :amount

      t.timestamps
    end
  end
end

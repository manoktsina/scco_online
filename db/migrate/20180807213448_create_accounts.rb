class CreateAccounts < ActiveRecord::Migration[5.2]
  def change
    create_table :accounts do |t|
      t.string :code, null:false
      t.string :title, null:false
      t.string :nature, null:false

      t.timestamps
    end
  end
end

class CreateMembers < ActiveRecord::Migration[5.2]
  def change
    create_table :members do |t|
      t.string :code, index: true
      t.string :name, index: true
      t.string :membership_type

      t.timestamps
    end
  end
end

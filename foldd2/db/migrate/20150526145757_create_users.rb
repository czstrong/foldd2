class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first
      t.string :last
      t.string :email
      t.integer :phone
      t.string :dorm
      t.string :address1
      t.string :address2
      t.integer :zip
      t.date :pud
      t.time :put
      t.date :dod
      t.time :dot

      t.timestamps

    end
  end
end

class CreateRecords < ActiveRecord::Migration
  def change
    create_table :records do |t|
      t.integer :user_id
      t.date :pud
      t.time :put
      t.date :dod
      t.time :dot

      t.timestamps

    end
  end
end

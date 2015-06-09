class ChangePickupstuffToString < ActiveRecord::Migration
    def up
        change_column :users, :pud, :string
    change_column :users, :put, :string
    change_column :users, :dod, :string
    change_column :users, :dot, :string
  end

  def down
    change_column :users, :pud, :date
    change_column :users, :put, :time
    change_column :users, :dod, :date
    change_column :users, :dot, :time
  end
end

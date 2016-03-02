class CreateWalletapis < ActiveRecord::Migration
  def change
    create_table :walletapis do |t|
      t.decimal :amount, :precision => 8, :scale => 2
      t.date :date
      t.string :org

      t.timestamps null: false
    end
  end
end

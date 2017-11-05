class CreateAccounts < ActiveRecord::Migration[5.1]
  def change
    create_table :accounts do |t|
      t.string :accountid
      t.string :beneficiaryname
      t.float :balance
      t.references :account, foreign_key: true

      t.timestamps
    end
  end
end

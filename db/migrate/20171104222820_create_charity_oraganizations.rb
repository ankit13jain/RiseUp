class CreateCharityOraganizations < ActiveRecord::Migration[5.1]
  def change
    create_table :charity_oraganizations do |t|
      t.string :name

      t.timestamps
    end
  end
end

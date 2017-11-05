class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.string :name
      t.datetime :date
      t.string :venue
      t.float :fundsneeded
      t.float :fundsraised
      t.references :charity_organization, foreign_key: true

      t.timestamps
    end
  end
end

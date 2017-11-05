class CreateUserActivities < ActiveRecord::Migration[5.1]
  def change
    create_table :user_activities do |t|
      t.datetime :activity_start_time
      t.datetime :activity_end_time
      t.float :fundraised
      t.float :distance
      t.integer :noofsteps
      t.references :user, foreign_key: true
      t.references :event, foreign_key: true
      t.references :activity, foreign_key: true

      t.timestamps
    end
  end
end

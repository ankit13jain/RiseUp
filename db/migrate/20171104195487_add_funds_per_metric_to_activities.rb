class AddFundsPerMetricToActivities < ActiveRecord::Migration[5.1]
  def change
    add_column :activities, :fundspermetric, :float
    remove_column :activities, :distance
  end
end

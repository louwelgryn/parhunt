class AddUserToDashboards < ActiveRecord::Migration[5.2]
  def change
    add_reference :dashboards, :user, foreign_key: true
  end
end

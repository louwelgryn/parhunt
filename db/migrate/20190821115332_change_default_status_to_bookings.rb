class ChangeDefaultStatusToBookings < ActiveRecord::Migration[5.2]
  def change
    change_column_default(:bookings, :status, from: "pending", to: "en attente")
  end
end

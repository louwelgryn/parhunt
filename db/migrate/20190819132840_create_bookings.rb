class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.references :user, foreign_key: true
      t.references :couple, foreign_key: true
      t.date :start_date
      t.date :end_date
      t.text :review_content
      t.integer :review_rating
      t.string :status, default: 'en attente'
      t.timestamps
    end
  end
end

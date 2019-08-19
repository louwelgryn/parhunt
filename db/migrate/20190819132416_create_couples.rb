class CreateCouples < ActiveRecord::Migration[5.2]
  def change
    create_table :couples do |t|
      t.string :name
      t.string :photo
      t.text :skills
      t.string :best_quality
      t.string :worst_default
      t.string :nickname
      t.string :address
      t.integer :price
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end

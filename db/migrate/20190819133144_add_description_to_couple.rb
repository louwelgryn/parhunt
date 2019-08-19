class AddDescriptionToCouple < ActiveRecord::Migration[5.2]
  def change
    add_column :couples, :description, :text
  end
end

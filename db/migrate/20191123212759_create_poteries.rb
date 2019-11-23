class CreatePoteries < ActiveRecord::Migration[5.2]
  def change
    create_table :poteries do |t|
      t.string :name
      t.text :description
      t.date :date

      t.timestamps
    end
  end
end

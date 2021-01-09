class CreateAnimalOffers < ActiveRecord::Migration[6.0]
  def change
    create_table :animals do |t|
      t.string :name
      t.text :description
      t.string :animal_type
      t.string :address
      t.date :start_date
      t.date :end_date
      t.timestamps
      t.references :user, null: false, foreign_key: true
    end
  end
end

class CreateCats < ActiveRecord::Migration[5.2]
  def change
    create_table :cats do |t|
      t.date :birth_date, null: false
      t.string :color
      t.string :name, null: false
      t.string :sex, null: false, limit: 1
      t.text :description, null: false

      t.timestamps

    end
  end
end

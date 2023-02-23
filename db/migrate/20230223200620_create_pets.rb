class CreatePets < ActiveRecord::Migration[7.0]
  def change
    create_table :pets do |t|
      t.string :name
      t.string :address
      t.string :species
      t.date :found_on, default: nil

      t.timestamps
    end
  end
end

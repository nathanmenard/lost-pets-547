class CreatePets < ActiveRecord::Migration[6.0]
  def change
    create_table :pets do |t|
      t.string :species
      t.integer :age
      t.string :found_location
      t.boolean :adopted, default: false

      t.timestamps
    end
  end
end

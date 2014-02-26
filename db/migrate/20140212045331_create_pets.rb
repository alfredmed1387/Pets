class CreatePets < ActiveRecord::Migration
  def change
    create_table :pets do |t|
      t.string :name
      t.string :raza
      t.string :specie
      t.datetime :birthday
      t.string :color

      t.timestamps
    end
  end
end

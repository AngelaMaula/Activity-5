class CreateAndroids < ActiveRecord::Migration[5.2]
  def change
    create_table :androids do |t|
      t.string :name
      t.string :brand
      t.date :year_released
      t.string :camera
      t.string :mpixel
      t.string :internal_memory
      t.integer :no_of_sim_slots
      t.string :size_of_screen
      t.integer :no_of_stock

      t.timestamps
    end
  end
end

class CreateCanchas < ActiveRecord::Migration
  def change
    create_table :canchas do |t|
      t.string :nombre
      t.string :direccion
      t.string :latitud
      t.string :longitud
      t.string :foto
      t.integer :iddistrito

      t.timestamps
    end
  end
end

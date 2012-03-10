class CreatePichangas < ActiveRecord::Migration
  def change
    create_table :pichangas do |t|
      t.string :titulo
      t.integer :nroJugador
      t.integer :PrecioCancha
      t.datetime :FechaInicio
      t.datetime :FechaFin
      t.string :comentario
      t.integer :idusuario
      t.string :estado
      t.integer :idusuario

      t.timestamps
    end
  end
end

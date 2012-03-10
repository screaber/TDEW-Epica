class CreateDetallePichangas < ActiveRecord::Migration
  def change
    create_table :detalle_pichangas do |t|
      t.integer :idpichanga
      t.integer :idusuario
      t.integer :montoJugador
      t.boolean :flagParticipo

      t.timestamps
    end
  end
end

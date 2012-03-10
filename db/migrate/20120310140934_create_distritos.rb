class CreateDistritos < ActiveRecord::Migration
  def change
    create_table :distritos do |t|
      t.string :nombre

      t.timestamps
    end
  end
end

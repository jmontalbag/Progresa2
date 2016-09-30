class CreateObjetivos < ActiveRecord::Migration
  def change
    create_table :objetivos do |t|
	 t.text :texto
      t.string :nombre
	  t.references :clasificacion, foreign_key: true, index:true
      t.references :area, foreign_key: true, index:true
      t.timestamps null: false
    end
  end
end

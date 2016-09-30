class CreateHistorials < ActiveRecord::Migration
  def change
    create_table :historials do |t|

     	t.references :beneficiario, foreign_key: true, index:true
      t.references :usuario, foreign_key: true, index:true
      t.references :estado, foreign_key: true, index:true
      t.references :objetivo, foreign_key: true, index:true
      t.date :fecha
      t.time :hora 

      t.timestamps null: false
    end
  end
end

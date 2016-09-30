class CreateClasificacions < ActiveRecord::Migration
  def change
    create_table :clasificacions do |t|

      		  t.string :nombre
      t.timestamps null: false
    end
  end
end

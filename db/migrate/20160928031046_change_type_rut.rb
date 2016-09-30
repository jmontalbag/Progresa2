class ChangeTypeRut < ActiveRecord::Migration
  def up
  	change_table :beneficiarios do |t|
  		t.change :rut, :string
  	end
  end

  def down
  	change_table :beneficiarios do |t|
  		t.change :rut, :integer
  	end
  end
end

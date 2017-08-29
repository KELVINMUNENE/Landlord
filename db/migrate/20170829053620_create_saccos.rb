class CreateSaccos < ActiveRecord::Migration[5.1]
  def change
    create_table :saccos do |t|
    	t.column :name, :string
    	t.column :Id, :integer
    	t.column :house, :string
    	t.column :amount, :money
    end
  end
end

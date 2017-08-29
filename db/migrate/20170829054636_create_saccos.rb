class CreateSaccos < ActiveRecord::Migration[5.1]
  def change
    create_table :saccos do |t|
    	t.column :name, :string
    	t.column :Id, :integer
    	t.column :House, :string
    	t.column :currency, :money

      t.timestamps
    end
  end
end

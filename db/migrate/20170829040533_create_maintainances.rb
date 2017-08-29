class CreateMaintainances < ActiveRecord::Migration[5.1]
  def change
    create_table :maintainances do |t|
    	t.column :name, :string
    	t.column :area, :string
    	t.column :problem, :string
    end
  end
end

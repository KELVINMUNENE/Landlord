class CreateMaintanances < ActiveRecord::Migration[5.1]
  def change
    create_table :maintanances do |t|
    	t.column :name, :string
    	t.column :area, :string
    	t.column :problem, :string

      t.timestamps
    end
  end
end

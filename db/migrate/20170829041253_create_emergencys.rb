class CreateEmergencys < ActiveRecord::Migration[5.1]
  def change
    create_table :emergencys do |t|
    	t.column :title, :string
    	t.column :description, :string


    	t.timestamp
    end
  end
end

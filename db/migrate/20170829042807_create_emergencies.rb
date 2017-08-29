class CreateEmergencies < ActiveRecord::Migration[5.1]
  def change
    create_table :emergencies do |t|
    	t.column :title, :string
    	t.column :description, :string


      t.timestamps
    end
  end
end

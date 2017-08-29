class CreateComplaints < ActiveRecord::Migration[5.1]
  def change
    create_table :complaints do |t|
    	t.column :name, :string
    	t.column :plot, :string
    	t.column :message, :string

    	t.timestamp
    end
  end
end

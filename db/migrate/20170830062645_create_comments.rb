class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
    	t.column :description, :string
    	t.column :user_id, :integer
    	t.column :notification_id, :integer

    	t.timestamps
    end
  end
end


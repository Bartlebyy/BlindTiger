class CreateGame < ActiveRecord::Migration[5.1]
  def change
    create_table :games do |t|
      t.integer :room_id
      t.boolean :active
    end
  end
end

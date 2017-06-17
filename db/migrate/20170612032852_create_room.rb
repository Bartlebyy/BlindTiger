class CreateRoom < ActiveRecord::Migration[5.1]
  def change
    create_table :rooms do |t|
      t.string :token, null: false
    end

    add_index :rooms, :token, unique: true
  end
end

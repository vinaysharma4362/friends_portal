class CreateFriends < ActiveRecord::Migration[7.0]
  def change
    create_table :friends do |t|
      t.integer :from_id
      t.integer :to_id
      t.integer :status, default: 0
      t.timestamps
    end
  end
end

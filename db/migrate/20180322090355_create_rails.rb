class CreateRails < ActiveRecord::Migration[5.1]
  def change
    create_table :rails do |t|
      t.string :g
      t.string :model
      t.string :favorite
      t.integer :user_id
      t.integer :topic_id

      t.timestamps
    end
  end
end

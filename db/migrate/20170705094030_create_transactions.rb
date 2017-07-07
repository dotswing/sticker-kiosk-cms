class CreateTransactions < ActiveRecord::Migration[5.0]
  def change
    create_table :transactions do |t|
      t.integer :sticker_id
      t.string :status
      t.integer :user_id
      t.string :branch

      t.timestamps
    end
  end
end

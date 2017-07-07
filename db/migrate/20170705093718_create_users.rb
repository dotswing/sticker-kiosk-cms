class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :mid
      t.string :display_name
      t.string :phone_number

      t.timestamps
    end
  end
end

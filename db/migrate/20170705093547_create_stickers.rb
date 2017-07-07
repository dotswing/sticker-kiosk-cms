class CreateStickers < ActiveRecord::Migration[5.0]
  def change
    create_table :stickers do |t|
      t.string :new_package_id
      t.string :old_package_id
      t.integer :provider_id
      t.float :price
      t.string :photo
      t.string :name

      t.timestamps
    end
  end
end

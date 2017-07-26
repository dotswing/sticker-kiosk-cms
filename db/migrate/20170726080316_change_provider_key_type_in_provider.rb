class ChangeProviderKeyTypeInProvider < ActiveRecord::Migration[5.0]
  def change
  	change_column :providers, :provider_key, :string
  end
end

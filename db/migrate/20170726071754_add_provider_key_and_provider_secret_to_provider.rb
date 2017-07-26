class AddProviderKeyAndProviderSecretToProvider < ActiveRecord::Migration[5.0]
  def change
  	add_column :providers, :provider_key, :int
  	add_column :providers, :provider_secret, :string
  end
end

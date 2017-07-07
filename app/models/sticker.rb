class Sticker < ApplicationRecord
	validates :new_package_id, presence: true
	validates :old_package_id, presence: true
	validates :provider_id, presence: true
	validates :name, presence: true

	belongs_to :provider
end

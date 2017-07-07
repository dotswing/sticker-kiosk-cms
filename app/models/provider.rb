class Provider < ApplicationRecord
	validates :name, presence: true
	
	has_many :stickers
end

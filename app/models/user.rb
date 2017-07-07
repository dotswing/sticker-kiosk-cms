class User < ApplicationRecord
	validates :mid, presence: true

	has_many :transactions
end

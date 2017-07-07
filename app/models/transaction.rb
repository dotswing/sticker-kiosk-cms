class Transaction < ApplicationRecord
	validates :sticker_id, presence: true
	validates :user_id, presence: true
	validates :status, presence: true

	belongs_to :sticker
  belongs_to :user
end

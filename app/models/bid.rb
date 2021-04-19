class Bid < ApplicationRecord
	belongs_to :project
	belongs_to :user
	validates :price, presence: true

end

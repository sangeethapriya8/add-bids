class Project < ApplicationRecord
	belongs_to :user
	has_many :bids
	validates :name, presence: true
	validates :skill, presence: true
	validates :state, presence: true
	validates :city, presence: true
end

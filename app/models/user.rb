class User < ApplicationRecord
	has_many :projects
	has_many :bids
	validates :username, presence: true
  	validates :password, presence: true, length: { minimum: 5 }
end

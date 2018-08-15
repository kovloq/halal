class Restaurant < ApplicationRecord
	belongs_to :pref
	validates :name, presence: true
	validates :lat, presence: true
	validates :lng, presence: true
end

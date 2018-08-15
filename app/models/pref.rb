class Pref < ApplicationRecord
	has_many :masjid
	has_many :restaurants
	has_many :shops
end

class Masjid < ApplicationRecord
	validates :name, presence: true
	validates :lat, presence: true
	validates :lng, presence: true
	validates :post_code, presence: true
	validates :address, presence: true
	belongs_to :pref
	has_many :images, :foreign_key => "parent_id"
end

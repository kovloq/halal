class Restaurant < ApplicationRecord
	belongs_to :pref
	validates :name, presence: true
	validates :lat, presence: true
	validates :lng, presence: true
	has_many :images, :foreign_key => "parent_id"
end

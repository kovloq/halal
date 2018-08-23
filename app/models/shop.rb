class Shop < ApplicationRecord
	belongs_to :pref
	has_many :images, :foreign_key => "parent_id"
end

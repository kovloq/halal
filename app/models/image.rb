class Image < ApplicationRecord
	mount_uploader :url
	belongs_to :masjid
end

class Page < ActiveRecord::Base
	belongs_to :admin_user
	has_many :subpages

	validates :active, :inclusion => { :in => [true, false] }
end

class User < ActiveRecord::Base
	validates_uniqueness_of :name 
	has_many :pictures
	has_many :comments
end

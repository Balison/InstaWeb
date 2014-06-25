class Picture < ActiveRecord::Base
	belongs_to :user
	has_many :comments
	has_attached_file :file, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :url  => "/assets/pictures/:id/:style/:basename.:extension",
                  :path => ":rails_root/public/assets/pictures/:id/:style/:basename.:extension"
  	validates_attachment_content_type :file, :content_type => /\Aimage\/.*\Z/
end

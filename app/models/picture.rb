class Picture < ActiveRecord::Base
	belongs_to :user
	has_many :comments
	has_attached_file :file, :styles => { :large => "480x320>", :medium => "300x300>", :thumb => "100x100>" }, 
	:url  => "/assets/pictures/:id/:style/:basename.:extension",
    :path => ":rails_root/public/assets/pictures/:id/:style/:basename.:extension"
   
   	validates_presence_of :title
    validates_attachment_presence :file
	validates_attachment_size :file, :less_than => 5.megabytes
  	validates_attachment_content_type :file, :content_type => ['image/jpeg', 'image/png', 'image/jpg']
end

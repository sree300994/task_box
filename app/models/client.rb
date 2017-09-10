class Client < ActiveRecord::Base

	has_many :projects
	validates_presence_of :name, :mobile, :email, :website
	validates_length_of :mobile, is:10
	validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i 
end

class Person < ActiveRecord::Base

	validates_presence_of :name
	validates_length_of :name, :maximum => 35, :message => "Please write a short name."
	validates_presence_of :phone
	validates_length_of :phone, :is => 10, :message => "Please enter a 10 digit number(include STD code)."
	validates_presence_of :location
	validates_presence_of :status

	searchable do
		text :name, :boost => 3 
		text :phone, :location, :status		
	end

	if :ipaddress
		geocoded_by :ipaddress,
  			:latitude => :latitude, :longitude => :longitude
		after_validation :geocode
	else
		geocoded_by :location,
  			:latitude => :latitude, :longitude => :longitude
		after_validation :geocode
	end	

	before_save :concatenate_chennai

  	def concatenate_chennai
     	self.location = "#{location},Tamil Nadu,India"
  	end
end

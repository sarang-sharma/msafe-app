class Person < ActiveRecord::Base

	validates_presence_of :name
	validates_presence_of :phone
	validates_length_of :phone, :maximum => 10
	validates_presence_of :location

	searchable do
		text :name, :boost => 3 
		text :phone, :location		
	end

	geocoded_by :location,
  		:latitude => :latitude, :longitude => :longitude
	after_validation :geocode


end

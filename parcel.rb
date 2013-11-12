require './address.rb'

class Parcel < Address
 	attr_accessor :dest, :value, :address

	def initialize(data = {})
		@dest, @value = data[:dest], data[:value]
		@address = super		
	end

	def to_s
		"#{super.to_s}Dest: #{@dest}\nValue: #{@value}\n"
	end

end

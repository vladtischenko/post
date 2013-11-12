
class Address
	attr_accessor :city, :street, :house, :apart

	def initialize(data = {})
		@city, @street, @house, @apart = data[:city], data[:street], data[:house], data[:apart]
	end

	def ==(other)
		if @city == other.city and
			@street == other.street and
			@house == other.house and
			@apart == other.apart
			true
		else
			false
		end
	end

	def to_s
		"\nCity: #{@city}\nStreet: #{@street}\nHouse: #{@house}\nApart: #{@apart}\n"	
	end

end

class Post
	attr_accessor :parcels

	def initialize(parcels = [])
		@parcels = parcels
	end

	def count_of_parcels(city)
		@parcels.select{|p| p.city == city}.count
	end

	def parcels_value_more_ten
		@parcels.select{|p| p.value > 10}.count
	end

	def most_popular_address
		result_parcel = nil
		parcels = @parcels
		0.upto(@parcels.count) do
			parcels -= parcels.uniq {|parcel| parcel.address}
			if parcels.count == 1
				result_parcel = parcels.first
				break
			end
		end
		result_parcel || "No most popular address!!!"
	end

end

# Before you start
# ------------------------------------------------------------------
# This rake tasks needs a table set up with the appropriate columns,
# use this command to create one if you haven't done so already:
# rails g model Location postcode:string latitude:float longitude:float easting:string northing:string gridref:string town:string region:string
# You'll also need the CSV file full of postcodes


# Rake task for location
# ----------------------------------
task :location => :environment do
	require 'csv'
	csv_text = File.read('app/private_assets/location.csv')
	csv = CSV.parse(csv_text, :headers => true)
	csv.each do |row|
		Location.create!(row.to_hash)
	end
end

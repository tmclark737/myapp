task :import_csv => :environment do
   require 'csv'    

	CSV.foreach('C:\Users\user\SkyDrive\Desktop\postgres\light_codes.csv', :headers => true) do |row|
	  LightCode.create!(row.to_hash)
	end
end
namespace :db do

  desc "load locationss from csv"
  task :locations_upload => :environment do
    require 'csv'
    
    Location.delete_all

    CSV.foreach("./app/assets/import/locations_upload.csv", :headers => true) do |row|

      Location.create(
        :city => row[1],
        :state => row[2]
      )
    end
  end
end
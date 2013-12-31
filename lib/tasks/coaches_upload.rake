namespace :db do

  desc "load coaches from csv"
  task :coaches_upload => :environment do
    require 'csv'
    
    Coach.delete_all

    CSV.foreach("./app/assets/import/coaches_upload.csv", :headers => true) do |row|

      Coach.create(
        :name => row[1], 
        :active_seasons => row[2], 
      )
    end
  end
end
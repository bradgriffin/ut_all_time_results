namespace :db do

  desc "load seasons from csv"
  task :seasons_upload => :environment do
    require 'csv'
    
    Season.delete_all

    CSV.foreach("./app/assets/import/seasons_upload.csv", :headers => true) do |row|

      Season.create(
        :season => row[1]
      )
    end
  end
end
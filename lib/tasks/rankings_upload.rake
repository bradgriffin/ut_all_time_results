namespace :db do

  desc "load rankings from csv"
  task :rankings_upload => :environment do
    require 'csv'
    
    Ranking.delete_all

    CSV.foreach("./app/assets/import/rankings_upload.csv", :headers => true) do |row|

      Ranking.create(
        :ranking => row[1]
      )
    end
  end
end
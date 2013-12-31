namespace :db do

  desc "load opponents from csv"
  task :opponents_upload => :environment do
    require 'csv'
    
    Opponent.delete_all

    CSV.foreach("./app/assets/import/opponents_upload.csv", :headers => true) do |row|

      Opponent.create(
        :school_name => row[1], 
      )
    end
  end
end
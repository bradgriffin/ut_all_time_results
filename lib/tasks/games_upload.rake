namespace :db do

  desc "load games from csv"
  task :games_upload => :environment do
    require 'csv'
    
    Game.delete_all

    CSV.foreach("./app/assets/import/games_upload.csv", :headers => true) do |row|
      def date(month,day,year)
        @month = month
        @day = day
        @year = year
        @date_concat = "#{@month}" + " " + "#{@day}" + ", " + "#{@year}"
        @date = Date.parse(@date_concat)
        @date = @date.to_s(:db)
        @date
      end

      def season(year)
        @season = Season.find_by_season(year)
        @season.id
      end

      def opponent(school)
        @opponent = Opponent.find_by_school_name(school)
        @opponent.id
      end

      def location(city)
        if city == 'Columbia, MO'
          @location = Location.find_by_city_and_state('Columbia','Missouri')
        else
          @location = Location.find_by_city(city)
        end
        @location.id
      end

      def ranking(rank)
        if rank == 'NR'
          @ranking = Ranking.find_by_ranking('Not Ranked')
        elsif rank == 'N/A'
          @ranking = Ranking.find_by_ranking('Not Known')
        else
          @ranking = Ranking.find_by_ranking(rank)
        end
        @ranking.id
      end

      def result(res)
        if res == 'W'
          @result = Result.find_by_result('Win')
        elsif res == 'L'
          @result = Result.find_by_result('Loss')
        elsif res == 'T'
          @result = Result.find_by_result('Tie')
        end
        @result.id
      end

      def coach(name)
        @coach = Coach.find_by_name(name)
        @coach.id
      end

      begin
        Game.create(
          :date => date(row[2],row[3],row[4]), 
          :ut_score => row[9], 
          :opponent_score => row[10], 
          :season_id => season(row[1]), 
          :opponent_id=> opponent(row[5]), 
          :location_id => location(row[6]), 
          :ut_rank => ranking(row[7]), 
          :opponent_rank => ranking(row[8]), 
          :result_id => result(row[11]), 
          :coach_id => coach(row[12]), 
        )
      rescue
        puts "#{row[0]} skipped!"
        next
      end
    end
  end
end
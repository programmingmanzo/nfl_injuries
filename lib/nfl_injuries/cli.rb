#CLI controller - Deals with user input. 

class NflInjuries::CLI 

    @@all = []
    
    def call 
        list_teams 
        team_players 
        #goodbye   
    
    end

    #calls the scrape_team class method which Instantiates the new objects of teams after scraping
    def list_teams
        puts "Welcome to NFL injuries"
        NflInjuries::Scraper.scrape_team 
        @team = NflInjuries::Teams.all   
        @team.each do |team, i|
           @@all << team.team_name  
           #binding.pry 
        end
        all_teams 
    end

    def all_teams

        @@all.each.with_index(1) do |team, i|
            puts "#{i}. #{team}" 
    
        #binding.pry 
        end
        team_players
    end

    #calls the the player.all class method and iterates through the collected elements
    def player  
        @player = NflInjuries::Player.all  
        @player.each.with_index(1) do |player, i|
            puts puts "#{i}. #{player.player_name} - #{player.player_details}\n#{player.player_url}"

        end
        NflInjuries::Player.all.clear
        menu 
    end
 
    def menu 
        puts "Please type list to return back to team screen or exit"
        input = nil 
        input = gets.strip.downcase  
        if input == "list"
            all_teams 
        elsif input == "exit"
            puts "Thank you for checking NFL injuries"
            exit
        else
            puts "Please type list to return back to team screen or exit"
            
        end
    end

    def team_players 
        input = nil 
        puts "Please select the team you would like an injury report on or list to see team list again:"
        while input != "exit"
        input = gets.strip.downcase 

            case input 

            when "1"
                NflInjuries::Scraper.scrape_players_arizona
                player 
            when "2"
                NflInjuries::Scraper.scrape_players_atlanta  
                player 
            when "3"
                NflInjuries::Scraper.scrape_players_baltimore  
                player              
            when "4"
                NflInjuries::Scraper.scrape_players_buffalo  
                player
            when "5"
                NflInjuries::Scraper.scrape_players_carolina  
                player
            when "6"
                NflInjuries::Scraper.scrape_players_chicago   
                player
            when "7"
                NflInjuries::Scraper.scrape_players_cincinnati  
                player
            when "8"
                NflInjuries::Scraper.scrape_players_cleveland  
                player
            when "9"
                NflInjuries::Scraper.scrape_players_dallas  
                player
            when "10"
                NflInjuries::Scraper.scrape_players_denver  
                player
            when "11"
                NflInjuries::Scraper.scrape_players_detroit  
                player
            when "12"
                NflInjuries::Scraper.scrape_players_green_bay  
                player
            when "13"
                NflInjuries::Scraper.scrape_players_houston   
                player
            when "14"
                NflInjuries::Scraper.scrape_players_indianapolis   
                player
            when "15"
                NflInjuries::Scraper.scrape_players_jacksonville  
                player
            when "16"
                NflInjuries::Scraper.scrape_players_kansas_city  
                player
            when "17"
                NflInjuries::Scraper.scrape_players_la_chargers  
                player
            when "18"
                NflInjuries::Scraper.scrape_players_la_rams  
                player
            when "19"
                NflInjuries::Scraper.scrape_players_miami  
                player
            when "20"
                NflInjuries::Scraper.scrape_players_minnesota   
                player
            when "21"
                NflInjuries::Scraper.scrape_players_new_england  
                player
            when "22"
                NflInjuries::Scraper.scrape_players_new_orleans  
                player
            when "23"
                NflInjuries::Scraper.scrape_players_ny_giants  
                player
            when "24"
                NflInjuries::Scraper.scrape_players_ny_jets  
                player
            when "25"
                NflInjuries::Scraper.scrape_players_oakland  
                player
            when "26"
                NflInjuries::Scraper.scrape_players_philadelphia   
                player
            when "27"
                NflInjuries::Scraper.scrape_players_pittsburgh   
                player
            when "28"
                NflInjuries::Scraper.scrape_players_san_francisco   
                player
            when "29"
                NflInjuries::Scraper.scrape_players_seattle  
                player
            when "30"
                NflInjuries::Scraper.scrape_players_tampa_bay  
                player
            when "31"
                NflInjuries::Scraper.scrape_players_tennessee  
                player
            when "32"
                NflInjuries::Scraper.scrape_players_washington  
                player               
            when "list" 
                all_teams 
            else
                team_players
            end
        #end
      end 
    end
  

    def goodbye 
        puts "Thank you for checking NFL injuries"
    end

end
#CLI controller - Deals with user input. 

class NflInjuries::CLI 
    
    def call 
        list_teams 
        menu   
        goodbye 
    end

    def list_teams 
        puts "Welcome to NFL injuries"
        @team = NflInjuries::Scraper.all_teams 
        @team.each.with_index(1) do |team, i|
            puts "#{i}. #{team}"
        end
    end
     
    def player  
        #puts "please select player for more info or list to go back to teams or exit"
        @player = NflInjuries::Player.all  
        @player.each.with_index(1) do |player, i|
            puts puts "#{i}. #{player.player_name} - #{player.player_details}\n#{player.player_url}"
        
        end
    end

    def menu 
        input = nil 
        while input != "exit"
            puts "Please select the team you would like an injury report on:"
        input = gets.strip.downcase 

            if input.to_i > 0 
            case 
            when input == "1"
                NflInjuries::Scraper.scrape_players_arizona
                player
            when input == "2"
                NflInjuries::Scraper.scrape_players_atlanta  
                player
            when input == "2"
                NflInjuries::Scraper.scrape_players_baltimore  
                player
            end
        end
      end 
    end
  

    def goodbye 
        puts "Thank you for checking NFL injuries"
    end

end
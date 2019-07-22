#CLI controller - Deals with user input. 

class NflInjuries::CLI 
    
    def call 
        NflInjuries::Scraper.scrape_team 
        list_teams 
        #team_players 
    
    end

    #calls the scrape_team class method which Instantiates the new objects of teams after scraping
    def list_teams

        puts "Welcome to NFL injuries"
        NflInjuries::Teams.all.each.with_index(1) do |team, i|
            puts "#{i}. #{team.team_name}"
            #binding.pry 
        end
        team_players  
    end

    #calls the the player.all class method and iterates through the collected elements
    def player

        @player = NflInjuries::Player.all 
        if @player.empty? == true    
            puts "No injuries available" 
        else
        @player.each.with_index(1) do |player, i|
            puts puts "#{i}. #{player.player_name} - #{player.player_details}\n#{player.player_url}"
        end

      end
        NflInjuries::Player.all.clear
        menu 
    end
 

    def menu 

        puts "Please type list to return to team selection or exit"
        input = nil 
        input = gets.strip.downcase  
        if input == "list"
            list_teams 
        elsif input == "exit"
            puts "Thank you for checking NFL injuries"
            exit
        else
            menu     
        end
    end

    #This case statement will scrape/instantiate new objects of the Player class. 
    def team_players 
        input = nil 
        puts "Please select the team you would like an injury report on or list to see team list again:"
        while input != "exit"
        input = gets.strip.downcase 
        #check to make sure the input was valid
        selected_team = NflInjuries::Teams.all[input.to_i-1]
        #binding.pry
        #check to see if selected_team have already been scraped?
           # if NflInjuries::Player.all.empty? == true
            NflInjuries::Scraper.scrape_players(selected_team.team_name)
            #binding.pry 
            player 
        #end
      end
   end
end
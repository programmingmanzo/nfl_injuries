#CLI controller

class NflInjuries::CLI 
    
    def call 

        NflInjuries::Scraper.scrape_team 
        list_teams
    
    end

    #List all the scraped teams that are saved in the Teams class method all
    def list_teams

        puts "Welcome to NFL injuries"
        NflInjuries::Teams.all.each.with_index(1) do |team, i|
            puts "#{i}. #{team.team_name}"

        end
        user_input 
    end

    #Main menu for user input
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

    #Scrapes if needed and lists 
    def display_players(selected_team) 
        players = NflInjuries::Player.all.select {|obj| obj.player_team.include?("#{selected_team.team_name}")}
    
    
            if players.length == 0 
                NflInjuries::Scraper.scrape_players(selected_team.team_name)
                players = NflInjuries::Player.all.select {|obj| obj.player_team.include?("#{selected_team.team_name}")}
                end
           
                players.each.with_index(1) do |player, i|
                puts puts "#{i}. #{player.player_team}: #{player.player_name} - #{player.player_details}\n#{player.player_url}" 
                end 
                menu 
    end

 
    def user_input 
        input = nil 
        puts "Please select a number corresponding to a team you would like an injury report:"
        input = gets.strip.downcase

        if  input.to_i >= 1 && input.to_i <= NflInjuries::Teams.all.length 
            selected_team = NflInjuries::Teams.all[input.to_i-1]
            display_players(selected_team)
        else 
            menu 
        end

    end
end
  

   

        
  



                        

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
        team_players  
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

    #Scrapes the team players only if they haven't been scraped before. 
    def team_players 
        input = nil 
        puts "Please select a number corresponding to a team you would like an injury report:"
        input = gets.strip.downcase
        if  input.to_i >= 1 && input.to_i <= NflInjuries::Teams.all.length 
            selected_team = NflInjuries::Teams.all[input.to_i-1]

            players = NflInjuries::Player.all.select {|obj| obj.player_team.include?("#{selected_team.team_name}")}
            no_dups = players.uniq {|item| item.player_name}
        else 
            menu 
        end
        
        selected_team = NflInjuries::Teams.all[input.to_i-1]

        players = NflInjuries::Player.all.select {|obj| obj.player_team.include?("#{selected_team.team_name}")}
        no_dups = players.uniq {|item| item.player_name}
        #binding.pry 
    
            if no_dups.length == 0 
                NflInjuries::Scraper.scrape_players(selected_team.team_name)
                new_players = NflInjuries::Player.all.select {|obj| obj.player_team.include?("#{selected_team.team_name}")}
                no_dups = new_players.uniq {|item| item.player_name}
                no_dups.each.with_index(1) do |player, i|
                    puts puts "#{i}. #{player.player_team}: #{player.player_name} - #{player.player_details}\n#{player.player_url}" 
                end 
                menu 
      
            else     
                players = NflInjuries::Player.all.select {|obj| obj.player_team.include?("#{selected_team.team_name}")}
                no_dups = players.uniq {|item| item.player_name}
                no_dups.each.with_index(1) do |player, i|
                puts puts "#{i}. #{player.player_team}: #{player.player_name} - #{player.player_details}\n#{player.player_url}" 
                end 
                menu 
        end
    end
end

  

   

        
  



                        

#CLI controller - Deals with user input. 

class NflInjuries::CLI 
    
    def call 

        NflInjuries::Scraper.scrape_team 
        list_teams
    
    end

    #calls the scrape_team class method which Instantiates the new objects of teams after scraping
    def list_teams

        puts "Welcome to NFL injuries"
        NflInjuries::Teams.all.each.with_index(1) do |team, i|
            puts "#{i}. #{team.team_name}"

        end
        team_players  
    end

    #calls the the player.all class method and iterates through the collected elements
    def no_dups

        @player = NflInjuries::Player.all 
        if @player.empty? == true    
            puts "No injuries available" 
        else
            @player = NflInjuries::Player.all.select {|obj| obj.player_team.include?("#{selected_team.team_name}")}
            #players.each.with_index(1) do |player, i| 
            no_dups = players.uniq {|item| item.player_name}
            no_dups.each.with_index(1) do |player, i|
            puts puts "#{i}. #{player.player_team}: #{player.player_name} - #{player.player_details}\n#{player.player_url}"
        end
      end
        menu 
    end   
    
    def no_dups 



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
        elsif input == "all"
            all_players = NflInjuries::Player.all
            #all_players.each do |obj|
            no_dups = all_players.uniq {|item| item.player_name}
            #binding.pry
            no_dups.each.with_index(1) do |player, i| 
            puts puts "#{i}. #{player.player_team}: #{player.player_name} - #{player.player_details}\n#{player.player_url}"  
        end
        menu 
      #end
     end
    end

    def team_players 
        input = nil 
        puts "Please select the team you would like an injury report on or list to see team list again:"
        while input != "exit"
        input = gets.strip.downcase 
        selected_team = NflInjuries::Teams.all[input.to_i-1]
        #binding.pry 

        players = NflInjuries::Player.all.select {|obj| obj.player_team.include?("#{selected_team.team_name}")}
        no_dups = players.uniq {|item| item.player_name}
        #binding.pry 
    
            if no_dups.length == 0 
                NflInjuries::Scraper.scrape_players(selected_team.team_name)
                players = NflInjuries::Player.all.select {|obj| obj.player_team.include?("#{selected_team.team_name}")}
                no_dups = players.uniq {|item| item.player_name}
                no_dups.each.with_index(1) do |player, i|
                puts puts "#{i}. #{player.player_team}: #{player.player_name} - #{player.player_details}\n#{player.player_url}"
                end 
                menu 

        
            elsif no_dups.length >= 1     
                players = NflInjuries::Player.all.select {|obj| obj.player_team.include?("#{selected_team.team_name}")}
                #players.each.with_index(1) do |player, i| 
                no_dups = players.uniq {|item| item.player_name}
                no_dups.each.with_index(1) do |player, i|
                puts puts "#{i}. #{player.player_team}: #{player.player_name} - #{player.player_details}\n#{player.player_url}" 
                binding.pry 
                end
                menu 

            else
                menu 
            end
        end
    end
end

   

        
  



                        

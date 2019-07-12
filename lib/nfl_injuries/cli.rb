#CLI controller - Deals with user input. 

class NflInjuries::CLI 
    
    def call 
        list_teams 
        menu 
        player_list 
        player 
        goodbye 
    end

    def list_teams 
        puts "Welcome to NFL injuries"
        puts <<-DOC 
        1. San Francisco 49ers 
        2. Oaklan Raiders 
        DOC
    end

    def menu 
        input = nil 
        while input != "exit"
            puts "Please select the team you would like an injury report on or type exit"
        input = gets.strip.downcase 
            case input 
            when "1" 
                player_list 
            when "2" 
                player_list 
            when "list"
                list_teams
            else 
                puts "Please type list or exit"
            end
        end
    end

    def player_list 
        puts "please select a player"
        puts <<-DOC 
        1. Jimmy G 
        2. E. Elliot
        DOC
        player 
    end 
    

    def player 
        input = nil 
        while input != "exit"
            puts "Please select the player to get injury report on or type players to see the players list again or type exit"
        input = gets.strip.downcase 
            case input 
            when "1" 
            puts "Broken Collar bone, out for 8 weeks"
            when "2" 
            puts "Torn ACL, out for season"
            when "list"
                list_teams
            when "players"
                player_list
            else 
                puts "Please type list or players or exit"
            end
        end
    end
        

    def goodbye 
        puts "Thank you for checking NFL injuries"
    end

end
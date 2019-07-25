class NflInjuries::Player 
    attr_accessor :player_name, :player_details, :player_url
    attr_reader :player_team

    @@all = []
    
    def initialize(player_name, player_details, player_url, player_team)

        @player_name = player_name 
        @player_details = player_details
        @player_url = player_url 
        @player_team = player_team 

        @@all << self 

    end

    def self.all 
        @@all
    end
        
end  
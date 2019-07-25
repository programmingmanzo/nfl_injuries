class NflInjuries::Teams 

    attr_accessor :team_name 

    @@all = [] 

    def initialize(team_name)
        
        @team_name = team_name   

        @@all << self

    end

    def self.all

        @@all 

    end 

end 





class NflInjuries::Player 
    attr_accessor :name, :position, :date_updated, :injury, :injury_status, :url 

    def self.status   
        #should return all details of injury and status
        puts <<-DOC 
        1. San Francisco 49ers 
        2. Oaklan Raiders 
        DOC

        player_1 = self.new 
        player_1.name = "D.J Foster" 
        player_1.positon = "RB" 
        player_1.updated = "Wed, May 29"
        player_1.injury = "Knee-ACL" 
        player_1.injury_status = "Questionable for the start of training camp" 
        player_1.url = https://www.cbssports.com/nfl/injuries/

        player_2 = self.new 
        player_2.name = "Patrick Peterson"  
        player_2. positon = "CB" 
        player_2.updated = "Thur, May 16"
        player_2.injury = "Suspension" 
        player_2.injury_status = "Suspended until week 7 at N.Y Giants" 
        player_2.url = https://www.cbssports.com/nfl/injuries/

        [player_1, player_2]
    end
        
end  
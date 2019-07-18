class NflInjuries::Scraper

    #attr_accessor :name, :details, :url, :team_name 

    def self.scrape_team

        doc = Nokogiri::HTML(open("https://www.cbssports.com/nfl/injuries/"))

        #binding.pry 
    
        i = 0 

        while i < doc.css(".TeamLogoNameLockup-name a").length

        team_name = doc.css(".TeamLogoNameLockup-name")[i].text.strip

        i += 1

        NflInjuries::Teams.new(team_name)

        end
    
    end 

    def self.scrape_players_arizona  

        doc = Nokogiri::HTML(open("https://www.usatoday.com/sports/nfl/cardinals/injuries/all/"))

        #binding.pry   

        i = 0 

        while i < doc.css(".player_name").length
     
        player_name = doc.css(".player_name")[i].text.strip
        player_details = doc.css(".injury_details")[i].text.strip
        player_url = "https://www.usatoday.com/sports/nfl/cardinals/injuries/all/"

        i += 1 

        NflInjuries::Player.new(player_name, player_details, player_url)

        end
    end



    def self.scrape_players_atlanta  

        doc = Nokogiri::HTML(open("https://www.usatoday.com/sports/nfl/falcons/injuries/all/"))

        #binding.pry   

        i = 0 

        while i < doc.css(".player_name").length

        player_name = doc.css(".player_name")[i].text.strip
        player_details = doc.css(".injury_details")[i].text.strip
        player_url = "https://www.usatoday.com/sports/nfl/falcons/injuries/all/"

        i += 1 

        NflInjuries::Player.new(player_name, player_details, player_url)

        end
    end

    def self.scrape_players_atlanta  

        doc = Nokogiri::HTML(open("https://www.usatoday.com/sports/nfl/falcons/injuries/all/"))

        #binding.pry   

        i = 0 

        while i < doc.css(".player_name").length

        player_name = doc.css(".player_name")[i].text.strip
        player_details = doc.css(".injury_details")[i].text.strip
        player_url = "https://www.usatoday.com/sports/nfl/falcons/injuries/all/"

        i += 1 

        NflInjuries::Player.new(player_name, player_details, player_url)

        end
    end

end 
 
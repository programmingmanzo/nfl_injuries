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
        if i == doc.css(".player_name").length
        while i < doc.css(".player_name").length
     
        player_name = doc.css(".player_name")[i].text.strip
        player_details = doc.css(".injury_details")[i].text.strip
        player_url = "https://www.usatoday.com/sports/nfl/cardinals/injuries/all/"

        i += 1 

        NflInjuries::Player.new(player_name, player_details, player_url)

        end
      end
    end



    def self.scrape_players_atlanta  

        doc = Nokogiri::HTML(open("https://www.usatoday.com/sports/nfl/falcons/injuries/all/"))

        #binding.pry   

        i = 0 
        if i == doc.css(".player_name").length
        while i < doc.css(".player_name").length

        player_name = doc.css(".player_name")[i].text.strip
        player_details = doc.css(".injury_details")[i].text.strip
        player_url = "https://www.usatoday.com/sports/nfl/falcons/injuries/all/"

        i += 1 

        NflInjuries::Player.new(player_name, player_details, player_url)

        end
      end
    end

    def self.scrape_players_baltimore  

        doc = Nokogiri::HTML(open("https://www.usatoday.com/sports/nfl/ravens/injuries/all/"))

        #binding.pry   

        i = 0 
        if i == doc.css(".player_name").length
        while i < doc.css(".player_name").length

        player_name = doc.css(".player_name")[i].text.strip
        player_details = doc.css(".injury_details")[i].text.strip
        player_url = "https://www.usatoday.com/sports/nfl/ravens/injuries/all/"

        i += 1 

        NflInjuries::Player.new(player_name, player_details, player_url)

        end
      end
    end

    def self.scrape_players_buffalo  

        doc = Nokogiri::HTML(open("https://www.usatoday.com/sports/nfl/bills/injuries/all/"))

        #binding.pry   

        i = 0 
        if i == doc.css(".player_name").length
        while i < doc.css(".player_name").length

        player_name = doc.css(".player_name")[i].text.strip
        player_details = doc.css(".injury_details")[i].text.strip
        player_url = "https://www.usatoday.com/sports/nfl/bills/injuries/all/"

        i += 1 

        NflInjuries::Player.new(player_name, player_details, player_url)

        end
      end
    end

    def self.scrape_players_carolina  

        doc = Nokogiri::HTML(open("https://www.usatoday.com/sports/nfl/panthers/injuries/all/"))

        #binding.pry   

        i = 0 
        if i == doc.css(".player_name").length
        while i < doc.css(".player_name").length

        player_name = doc.css(".player_name")[i].text.strip
        player_details = doc.css(".injury_details")[i].text.strip
        player_url = "https://www.usatoday.com/sports/nfl/panthers/injuries/all/"

        i += 1 

        NflInjuries::Player.new(player_name, player_details, player_url)

        end
      end
    end

    def self.scrape_players_chicago  

        doc = Nokogiri::HTML(open("https://www.usatoday.com/sports/nfl/bears/injuries/all/"))

        #binding.pry   

        i = 0 
        if i == doc.css(".player_name").length
            puts "There are no injuries available"
        while i < doc.css(".player_name").length

        player_name = doc.css(".player_name")[i].text.strip
        player_details = doc.css(".injury_details")[i].text.strip
        player_url = "https://www.usatoday.com/sports/nfl/bears/injuries/all/"

        i += 1 

        NflInjuries::Player.new(player_name, player_details, player_url)
        
        end
      end
    end

    def self.scrape_players_cincinnati  

        doc = Nokogiri::HTML(open("https://www.usatoday.com/sports/nfl/bengals/injuries/all/"))

        #binding.pry   

        i = 0 
        if i == doc.css(".player_name").length
            puts "There are no injuries available"
        while i < doc.css(".player_name").length

        player_name = doc.css(".player_name")[i].text.strip
        player_details = doc.css(".injury_details")[i].text.strip
        player_url = "https://www.usatoday.com/sports/nfl/bengals/injuries/all/"

        i += 1 

        NflInjuries::Player.new(player_name, player_details, player_url)
        
        end
      end
    end

    def self.scrape_players_cleveland   

        doc = Nokogiri::HTML(open("https://www.usatoday.com/sports/nfl/browns/injuries/all/"))

        #binding.pry   

        i = 0 
        if i == doc.css(".player_name").length
            puts "There are no injuries available"
        while i < doc.css(".player_name").length

        player_name = doc.css(".player_name")[i].text.strip
        player_details = doc.css(".injury_details")[i].text.strip
        player_url = "https://www.usatoday.com/sports/nfl/browns/injuries/all/"

        i += 1 

        NflInjuries::Player.new(player_name, player_details, player_url)
        
        end
      end
    end

    def self.scrape_players_dallas   

        doc = Nokogiri::HTML(open("https://www.usatoday.com/sports/nfl/cowboys/injuries/all/"))

        #binding.pry   

        i = 0 
        if i == doc.css(".player_name").length
            puts "There are no injuries available"
        while i < doc.css(".player_name").length

        player_name = doc.css(".player_name")[i].text.strip
        player_details = doc.css(".injury_details")[i].text.strip
        player_url = "https://www.usatoday.com/sports/nfl/cowboys/injuries/all/"

        i += 1 

        NflInjuries::Player.new(player_name, player_details, player_url)
        
        end
      end
    end

    def self.scrape_players_denver   

        doc = Nokogiri::HTML(open("https://www.usatoday.com/sports/nfl/broncos/injuries/all/"))

        #binding.pry   

        i = 0 
        if i == doc.css(".player_name").length
            puts "There are no injuries available"
        while i < doc.css(".player_name").length

        player_name = doc.css(".player_name")[i].text.strip
        player_details = doc.css(".injury_details")[i].text.strip
        player_url = "https://www.usatoday.com/sports/nfl/broncos/injuries/all/"

        i += 1 

        NflInjuries::Player.new(player_name, player_details, player_url)
        
        end
      end
    end

    def self.scrape_players_detroit   

        doc = Nokogiri::HTML(open("https://www.usatoday.com/sports/nfl/lions/injuries/all/"))

        #binding.pry   

        i = 0 
        if i == doc.css(".player_name").length
            puts "There are no injuries available"
        while i < doc.css(".player_name").length

        player_name = doc.css(".player_name")[i].text.strip
        player_details = doc.css(".injury_details")[i].text.strip
        player_url = "https://www.usatoday.com/sports/nfl/lions/injuries/all/"

        i += 1 

        NflInjuries::Player.new(player_name, player_details, player_url)
        
        end
      end
    end

    def self.scrape_players_green_bay   

        doc = Nokogiri::HTML(open("https://www.usatoday.com/sports/nfl/packers/injuries/all/"))

        #binding.pry   

        i = 0 
        if i == doc.css(".player_name").length
            puts "There are no injuries available"
        while i < doc.css(".player_name").length

        player_name = doc.css(".player_name")[i].text.strip
        player_details = doc.css(".injury_details")[i].text.strip
        player_url = "https://www.usatoday.com/sports/nfl/packers/injuries/all/"

        i += 1 

        NflInjuries::Player.new(player_name, player_details, player_url)
        
        end
      end
    end

    def self.scrape_players_houston   

        doc = Nokogiri::HTML(open("https://www.usatoday.com/sports/nfl/texans/injuries/all/"))

        #binding.pry   

        i = 0 
        if i == doc.css(".player_name").length
            puts "There are no injuries available"
        while i < doc.css(".player_name").length

        player_name = doc.css(".player_name")[i].text.strip
        player_details = doc.css(".injury_details")[i].text.strip
        player_url = "https://www.usatoday.com/sports/nfl/texans/injuries/all/"

        i += 1 

        NflInjuries::Player.new(player_name, player_details, player_url)
        
        end
      end
    end

    def self.scrape_players_indianapolis   

        doc = Nokogiri::HTML(open("https://www.usatoday.com/sports/nfl/colts/injuries/all/"))

        #binding.pry   

        i = 0 
        if i == doc.css(".player_name").length
            puts "There are no injuries available"
        while i < doc.css(".player_name").length

        player_name = doc.css(".player_name")[i].text.strip
        player_details = doc.css(".injury_details")[i].text.strip
        player_url = "https://www.usatoday.com/sports/nfl/colts/injuries/all/"

        i += 1 

        NflInjuries::Player.new(player_name, player_details, player_url)
        
        end
      end
    end

    def self.scrape_players_jacksonville   

        doc = Nokogiri::HTML(open("https://www.usatoday.com/sports/nfl/jaguars/injuries/all/"))

        #binding.pry   

        i = 0 
        if i == doc.css(".player_name").length
            puts "There are no injuries available"
        while i < doc.css(".player_name").length

        player_name = doc.css(".player_name")[i].text.strip
        player_details = doc.css(".injury_details")[i].text.strip
        player_url = "https://www.usatoday.com/sports/nfl/jaguars/injuries/all/"

        i += 1 

        NflInjuries::Player.new(player_name, player_details, player_url)
        
        end
      end
    end

    def self.scrape_players_kansas_city   

        doc = Nokogiri::HTML(open("https://www.usatoday.com/sports/nfl/chiefs/injuries/all/"))

        #binding.pry   

        i = 0 
        if i == doc.css(".player_name").length
            puts "There are no injuries available"
        while i < doc.css(".player_name").length

        player_name = doc.css(".player_name")[i].text.strip
        player_details = doc.css(".injury_details")[i].text.strip
        player_url = "https://www.usatoday.com/sports/nfl/chiefs/injuries/all/"

        i += 1 

        NflInjuries::Player.new(player_name, player_details, player_url)
        
        end
      end
    end

    def self.scrape_players_la_chargers   

        doc = Nokogiri::HTML(open("https://www.usatoday.com/sports/nfl/chargers/injuries/all/"))

        #binding.pry   

        i = 0 
        if i == doc.css(".player_name").length
            puts "There are no injuries available"
        while i < doc.css(".player_name").length

        player_name = doc.css(".player_name")[i].text.strip
        player_details = doc.css(".injury_details")[i].text.strip
        player_url = "https://www.usatoday.com/sports/nfl/chargers/injuries/all/"

        i += 1 

        NflInjuries::Player.new(player_name, player_details, player_url)
        
        end
      end
    end

    def self.scrape_players_la_rams  

        doc = Nokogiri::HTML(open("https://www.usatoday.com/sports/nfl/rams/injuries/all/"))

        #binding.pry   

        i = 0 
        if i == doc.css(".player_name").length
            puts "There are no injuries available"
        while i < doc.css(".player_name").length

        player_name = doc.css(".player_name")[i].text.strip
        player_details = doc.css(".injury_details")[i].text.strip
        player_url = "https://www.usatoday.com/sports/nfl/rams/injuries/all/"

        i += 1 

        NflInjuries::Player.new(player_name, player_details, player_url)
        
        end
      end
    end

    def self.scrape_players_miami  

        doc = Nokogiri::HTML(open("https://www.usatoday.com/sports/nfl/dolphins/injuries/all/"))

        #binding.pry   

        i = 0 
        if i == doc.css(".player_name").length
            puts "There are no injuries available"
        while i < doc.css(".player_name").length

        player_name = doc.css(".player_name")[i].text.strip
        player_details = doc.css(".injury_details")[i].text.strip
        player_url = "https://www.usatoday.com/sports/nfl/dolphins/injuries/all/"

        i += 1 

        NflInjuries::Player.new(player_name, player_details, player_url)
        
        end
      end
    end

    def self.scrape_players_minnesota  

        doc = Nokogiri::HTML(open("https://www.usatoday.com/sports/nfl/vikings/injuries/all/"))

        #binding.pry   

        i = 0 
        if i == doc.css(".player_name").length
            puts "There are no injuries available"
        while i < doc.css(".player_name").length

        player_name = doc.css(".player_name")[i].text.strip
        player_details = doc.css(".injury_details")[i].text.strip
        player_url = "https://www.usatoday.com/sports/nfl/vikings/injuries/all/"

        i += 1 

        NflInjuries::Player.new(player_name, player_details, player_url)
        
        end
      end
    end

    def self.scrape_players_new_england  

        doc = Nokogiri::HTML(open("https://www.usatoday.com/sports/nfl/patriots/injuries/all/"))

        #binding.pry   

        i = 0 
        if i == doc.css(".player_name").length
            puts "There are no injuries available"
        while i < doc.css(".player_name").length

        player_name = doc.css(".player_name")[i].text.strip
        player_details = doc.css(".injury_details")[i].text.strip
        player_url = "https://www.usatoday.com/sports/nfl/patriots/injuries/all/"

        i += 1 

        NflInjuries::Player.new(player_name, player_details, player_url)
        
        end
      end
    end

    def self.scrape_players_new_orleans  

        doc = Nokogiri::HTML(open("https://www.usatoday.com/sports/nfl/saints/injuries/all/"))

        #binding.pry   

        i = 0 
        if i == doc.css(".player_name").length
            puts "There are no injuries available"
        while i < doc.css(".player_name").length

        player_name = doc.css(".player_name")[i].text.strip
        player_details = doc.css(".injury_details")[i].text.strip
        player_url = "https://www.usatoday.com/sports/nfl/saints/injuries/all/"

        i += 1 

        NflInjuries::Player.new(player_name, player_details, player_url)
        
        end
      end
    end

    def self.scrape_players_ny_giants  

        doc = Nokogiri::HTML(open("https://www.usatoday.com/sports/nfl/giants/injuries/all/"))

        #binding.pry   

        i = 0 
        if i == doc.css(".player_name").length
            puts "There are no injuries available"
        while i < doc.css(".player_name").length

        player_name = doc.css(".player_name")[i].text.strip
        player_details = doc.css(".injury_details")[i].text.strip
        player_url = "https://www.usatoday.com/sports/nfl/giants/injuries/all/"

        i += 1 

        NflInjuries::Player.new(player_name, player_details, player_url)
        
        end
      end
    end



end 
 
class NflInjuries::Scraper


    def self.scrape_team

        doc = Nokogiri::HTML(open("https://www.cbssports.com/nfl/injuries/"))

        doc.css(".TeamLogoNameLockup-name a").each do |team|

        team_name = team.attribute("href").value.split("/")[-1].split("-")[-1]
          #binding.pry 

        NflInjuries::Teams.new(team_name)

        end
    
    end 


    def self.scrape_players(selected_team)

        doc = Nokogiri::HTML(open("https://www.usatoday.com/sports/nfl/#{selected_team}/injuries/all/"))

        i = 0 
        
        while i < doc.css(".player_name").length

        player_name = doc.css(".player_name")[i].text.strip
        player_details = doc.css(".injury_details")[i].text.strip
        player_url = "https://www.usatoday.com/sports/nfl/#{selected_team}/injuries/all/"
        player_team = "#{selected_team}"

        i += 1 

        NflInjuries::Player.new(player_name, player_details, player_url, player_team)

      end
    end
  end 


class Parks
    attr_accessor :name, :states, :access, :camping, :description, 
    :activities, :entranceFees, :contacts, :directionsUrl, :weatherInfo, 
    :images, :addresses, :longitude, :directionsInfo, :entrancePasses, :url,
    :operatingHours, :topics, :latLong, :designation, :parkCode, :id, 
    :fullName, :latitude, :cli_id

    @@all = []
    @@parks = []

    def initialize(args)
        args.each {|key, value| self.send("#{key}=", value)}
        self.cli_id = @@all.size + 1
        save 
    end

    def self.get_park_by_id(park_num)
        self.all.find do|park| 
            park.cli_id == park_num 
        end       
    end
    
    def save
        @@all << self
    end
    def get_park_name
        self.fullName  
    end
    def self.all
        @@all
    end
    def get_access
        self.access
    end
    def get_camping_info
        self.camping 
    end
    def get_description
        self.description
    end

    def get_activities
        self.activities.each {|activity| puts activity["name"] }
        self.url 
    end

    def get_fees     
        self.entranceFees.each do |fee|
            if fee["cost"].to_f == 0.0
                puts "the #{fee["title"]} is free!!!"
            else 
                puts "the #{fee["title"]} is $#{fee["cost"].to_f}"
            end
        end
        return nil 
    end

    def phone_email
        puts "phone number:  #{self.contacts["phoneNumbers"][0]["phoneNumber"]}"
        puts "email:  #{self.contacts["emailAddresses"][0]["emailAddress"]}"   
    end

    def get_directions
        self.directionsUrl
    end

    def get_weather
        self.weatherInfo
    end

    def get_images
        self.images.each {|photo| puts photo["url"]}
    end

    def get_addresses
        self.addresses.each do |address| 
            puts "#{address["line1"]} #{address["city"]} #{address["postalCode"]}" 
        end
    end

    def get_url
        self.url 
    end
end

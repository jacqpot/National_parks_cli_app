class Parks
    attr_accessor :name, :states, :access, :camping, :description, 
    :activities, :entranceFees, :contacts, :directionsUrl, :weatherInfo, 
    :images, :addresses, :longitude, :directionsInfo, :entrancePasses, :url,
    :operatingHours, :topics, :latLong, :designation, :parkCode, :id, 
    :fullName, :latitude, :cli_id, 

    @@all = []
    @@parks = []

    def initialize(args, park_choice)
        args.each {|key, value| self.send("#{key}=", value)}
        self.cli_id = @@all.size + 1
        save 
    end
    def save
        @@all << self
    end
    def get_park_name
        self.name 
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
        self.activities.each {|activity| puts activity["name"]} 
        # binding.pry
    end


    
    
    
    
    
    
    
    
    # def self.park_names
    #     @@park_name
    # end
    # def get_parks
    #     @@state["data"].each do |park|
    #         @@park_names << park["name"]
    # end
    
    
    

    
    
    
end
# name:, states:, access:, camping:, discription:, activities:, entranceFees:, contacts:, directionsUrl:, weatherInfo:, images:, addresses:)
# self.name = name 
# self.states = states
# self.access = access
# self.camping = camping
# self.discription = discription
# self.activities = activities
# self.entranceFees = entranceFees 
# self.contacts = contacts 
# self.directionsUrl = directionsUrl
# self.weatherInfo = weatherInfo 
# self.images = images 
# self.addresses = addresses
# self.save
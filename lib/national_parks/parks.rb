class Parks
    attr_accessor :name, :states, :access, :camping, :disrcription, :activities, :entranceFees, :contacts, :directionsUrl, :weatherInfo, :images, :addresses

    @@all = []

    def initialize(name:, states:, access:, camping:, discription:, activities:, entranceFees:, contacts:, directionsUrl:, weatherInfo:, images:, addresses:)
        self.name = name 
        self.states = states
        self.access = access
        self.camping = camping
        self.discription = discription
        self.activities = activities
        self.entranceFees = entranceFees 
        self.contacts = contacts 
        self.directionsUrl = directionsUrl
        self.weatherInfo = weatherInfo 
        self.images = images 
        self.addresses = addresses
        self.save
    end
    def save
        @@all << self
    end
        
    





end
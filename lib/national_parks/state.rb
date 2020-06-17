class State

attr_accessor :name, :states, :access, :camping, :disrcription, :activities, :entranceFees, :contacts, :directionsUrl, :weatherInfo, :images, :addresses
    @@all = []
    @@state = []
    @@parks = []
    def initialize(state_id)
        Get_State.new
        # @@all << Get_State.parks["data"] 
        #binding.pry
        @@state = Get_State.state(state_id)
        # save
        @@state["data"].each do |park|
            temp = Parks.new(park) 
            
        end
        # binding.pry
    end


    def self.all
        @@all
    end
    def self.State
        @@state
    end
#binding.pry

end


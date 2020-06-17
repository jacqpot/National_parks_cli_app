class State

attr_accessor :name, :states, :access, :camping, :disrcription, :activities, :entranceFees, :contacts, :directionsUrl, :weatherInfo, :images, :addresses
    @@all = []
    @@state = []
    @@park_name = []
    def initialize(state_id)
        Get_State.new
        # @@all << Get_State.parks["data"] 
        #binding.pry
        @@state = Get_State.state(state_id)
        # save
        @@state["data"].each do |park|
            @@park_name << park["name"]
        end
        binding.pry
    end

    # def self.park_name
    #     @@park_name
    # end
    def self.all
        @@all
    end
    def self.State
        @@state
    end
#binding.pry

end


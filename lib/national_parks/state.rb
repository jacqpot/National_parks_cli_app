class State

attr_accessor :name, :states, :access, :camping, :disrcription, :activities, :entranceFees, :contacts, :directionsUrl, :weatherInfo, :images, :addresses
    @@all = []
    @@state = []
    # @@parks = []
    def initialize(state_id)
        Get_State.new
        @@state = Get_State.state(state_id)
        @@state["data"].each do |park|
        Parks.new(park)    
        end
    end
    def self.all
        @@all
    end
    def self.State
        @@state
    end


end


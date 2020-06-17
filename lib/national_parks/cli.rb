class Call
    
    def initialize
        intro
    end
    
    def intro
        puts "Welcome to the National Parks Database!"
        puts "please wait while we locate all the National Parks"
        puts "list of state id's"
        #optional list of state ideas
        puts "what state would you like to check out? (enter 2 character state ID)"
         state_id = gets.strip
         State.new(state_id)
    end

#     def get_data

#     end

end
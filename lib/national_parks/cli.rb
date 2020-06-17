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
        get_lists_of_parks
        puts "which park would you like to learn more about?"
        puts "please enter the number asociated with your park of choice!"
        park_choice = gets.chomp
        Parks.all(park_choice)
        binding.pry
    end




    def get_lists_of_parks
        Parks.all.each {|park| puts "#{park.cli_id}- #{park.name}."}
        
    end
    def park_choice
        if Parks.all.each {|cli_id|}

        end
    end


end
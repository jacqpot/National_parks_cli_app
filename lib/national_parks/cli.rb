class Call
    attr_accessor :current_park
    def initialize
        puts ""
        puts ""
        puts "Welcome to a National Parks selection service, "
        puts "Here you can look at parks by state, and check for camping, address and much more"
        main_menu

    end
    
    def main_menu
        puts "-----------------------------------------"
        puts 'would you like to see a list of state ids? y/n'
        choice = gets.strip
        if choice.downcase == "y"
            state_ids.each {|id| puts "   #{id}  "}
        end
        puts "what state would you like to check out? (enter 2 character state ID)"
        state_id = gets.strip.upcase
        while !self.state_ids.include?(state_id) 
            puts ' wrong input'
            puts 'Please enter a valid state code.' 
            state_id = gets.strip.upcase 
            
        end
        puts "please wait while we locate the National Parks in your area...."
        State.new(state_id)
        park_menu
    end

    def state_ids
        @@ids = ["AL","AK","AZ","AR","CA","CO","CT","DE","FL","GA","HI","ID","IL","IN","IA","KS",
            "KY","LA","ME","MD","MA","MI","MN","MS","MO","MT","NE","NV","NH","NJ","NM","NY","NC","ND",
            "OH","OK","OR","PA","RI","SC","SD","TN","TX","UT","VT","VA","WA","WV","WI","WY"]
    end

    def park_menu
        puts "-----------------------------------------"
        get_lists_of_parks
        puts ""
        puts "which park would you like to learn more about?"
        puts "please enter the number asociated with your park of choice!"
        puts "type exit to exit the program"
        park_choice = gets.chomp
        park_num = park_choice.to_i

        if self.current_park = Parks.get_park_by_id(park_num)
            learn_more
        elsif
            park_choice.downcase == "exit"
            exit_program
        else
            puts "please enter a valid number:"
            park_menu 
        end

    end
    
    def learn_more
        puts "-----------------------------------------"
        puts "welcome to #{self.current_park.get_park_name}!!"
        puts "please select from the options below to learn more."
        puts ""
        puts 'For a description and some photos press 1'
        puts ""
        puts 'To check for entrance fees press press 2'
        puts ""
        puts "For access, camping, and weather information (if available) press 3"
        puts ""
        puts 'For a list of activities available press 4'
        puts ''
        puts "For general contact information press 5"
        puts ''
        puts "see the website for more information"
        puts "#{self.current_park.get_url}"
        puts ""
        puts "To learn about another park press 0" 
        puts "enter 6 to close program."
        input = gets.chomp
        num = input.to_i
        while !(0..6).to_a.include?(num)
            puts "please enter a valid number"
            input = gets.chomp
            num = input.to_i
        end 
        exploring(num)
    end

    def exploring(num)
        if num == 1
            puts "-----------------------------------------"
            puts "description:  #{self.current_park.get_description}"
            puts ""
            puts "Here are a couple photos to get excited about!!"
            self.current_park.get_images
            puts "-----------------------------------------"
            change_menu
        elsif num == 2
            puts "-----------------------------------------"
            self.current_park.get_fees
            puts "-----------------------------------------"
            puts ""
            change_menu
        elsif num == 3
            puts "-----------------------------------------"
            puts self.current_park.get_access
            puts ""
            puts self.current_park.get_camping_info
            puts ""
            puts self.current_park.get_weather
            puts "-----------------------------------------"
            puts ""
            change_menu
        elsif num == 4
            puts "-----------------------------------------"
            puts self.current_park.get_activities
            puts "-----------------------------------------"
            change_menu
        elsif num == 5
            puts "-----------------------------------------"
            self.current_park.phone_email
            puts "-----------------------------------------"
            puts ""
            change_menu
        elsif num == 0
            puts ""
            puts ""
            park_menu
        elsif num == 6
            exit_program
        else
            park_menu 
        end

    end
        
    def change_menu
        puts "-----------------------------------------"
        puts 'enter 1 to return to information menu'
        puts 'enter 2 to return to park list'
        puts 'enter 3 to return to state list'
        puts 'enter any other key to exit program'
        puts "-----------------------------------------"
        input = gets.chomp
        num = input.to_i
        if num == 1 
            learn_more 
        elsif num == 2
            
            park_menu

        elsif num == 3
            Parks.all.clear 
            main_menu
        else 
            exit_program
        end
    end

    def get_lists_of_parks
        Parks.all.each {|park| puts "#{park.cli_id}-   #{park.name}."}
    end

    def list_activities
        self.current_park.get_activities
        puts "for more information see the park web site."
    end
    def exit_program
        exit! 
    end
end

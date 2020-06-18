class Call
    attr_accessor :current_park
    def initialize
        puts "Welcome to a National Parks selection service, "
        puts "Here you can look at parks by state, and check for camping, address and much more"
        main_menu

    end
    
    def main_menu
        
        # puts "do you need a list of state codes?(ex... CA, MN, CO) y/n"
        puts "what state would you like to check out? (enter 2 character state ID)"
        puts "please wait while we locate the National Parks in your area...."
         state_id = gets.strip
         State.new(state_id)
        get_lists_of_parks
        park_menu
    end


    def park_menu
        get_lists_of_parks
        puts "which park would you like to learn more about?"
        puts "please enter the number asociated with your park of choice!"
        # puts "if you want to look at another state type: 0"
        park_choice = gets.chomp
        park_num = park_choice.to_i
        self.current_park = Parks.get_park_by_id(park_num)
        learn_more
    end
    
    def learn_more
        puts "welcome to #{self.current_park.get_park_name}!!"
        binding.pry
        puts "please select from the options below to learn more."
        puts ""
        puts 'For a discription and some photos press 1'
        puts ""
        puts 'To check for entrence fees press press 2'
        puts ""
        puts "For access, camping, and weather information press 3"
        puts ""
        puts 'For a list of activities avalible press 4'
        puts ''
        puts "For general contact information press 5"
        puts ''
        puts "see the website for more information"
        puts "#{self.current_park.get_url}"
        puts ""
        puts "To learn about another park press 0" 
        exploring
    end
    def exploring
        input = gets.chomp
        num = input.to_i
        if num == 1
            self.current_park.get_description
            self.current_park.get_images
            learn_more
            
        elsif num == 2
            self.current_park.get_fees
            learn_more
        elsif num == 3
            self.current_park
            self.current_park
            self.current_park
            learn_more
        elsif num == 4
            self.current_park.activities
            learn_more
        elsif num == 5
            self.current_park.phone_email
            learn_more
        elsif num == 0
            park_menu
        else
            park_menu 
        
        
        end

    end
        
    end




    def get_lists_of_parks
        Parks.all.each {|park| puts "#{park.cli_id}-   #{park.name}."}
        
    end
    def park_choice
        if Parks.all.each {|cli_id|}
            
        end
    end
    def list_activities
    self.current_park.get_activities
    puts "for more information see the park web site."
    end
end

class Get_State 

    @@url = "https://developer.nps.gov/api/v1/parks?stateCode="
    #https://developer.nps.gov/api/v1/parks?api_key=MzxL9X85KesNiLvdvJe2cbHmmpdzdQl7zfiD4ckm
    @@key = "&limit=50&api_key=MzxL9X85KesNiLvdvJe2cbHmmpdzdQl7zfiD4ckm"
    # def self.parks
    #     response = RestClient.get("#{@@url}parks?#{@@key}")
    #     data = JSON.parse(response)
    #     #binding.pry
    # end
    
    def self.state(state_id)
        state_url = "#{@@url}#{state_id}#{@@key}"
        # response = RestClient.get("#{@@url}#{state_id}limit=50&#{@@key}")
        response = RestClient.get(state_url)
        data = JSON.parse(response)   
        #binding.pry
    end



end

# end

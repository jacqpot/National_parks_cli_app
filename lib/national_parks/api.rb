class Get_State 

    @@url = "https://developer.nps.gov/api/v1/parks?stateCode="
    @@key = "&limit=50&api_key=MzxL9X85KesNiLvdvJe2cbHmmpdzdQl7zfiD4ckm"

    
    def self.state(state_id)
        state_url = "#{@@url}#{state_id}#{@@key}"
        response = RestClient.get(state_url)
        data = JSON.parse(response)   

    end
end



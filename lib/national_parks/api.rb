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
#https://developer.nps.gov/api/v1/parks?stateCode=CO&limit=50&api_key=MzxL9X85KesNiLvdvJe2cbHmmpdzdQl7zfiD4ckm
#binding.pry
#API.get_parks

# my api key for potgieter.g.jacques@gmail.com is

# MzxL9X85KesNiLvdvJe2cbHmmpdzdQl7zfiD4ckm
# class Parks
#     @@url = "https://developer.nps.gov/api/v1/parks?api_key=MzxL9X85KesNiLvdvJe2cbHmmpdzdQl7zfiD4ckm"
    
#     def self.get_park
#         uri = URI.parse(@@url)
#         response = Net::HTTP.get_response(uri)
#         body = response.body
#         JSON(body)
#         binding.pry
#     end



# end

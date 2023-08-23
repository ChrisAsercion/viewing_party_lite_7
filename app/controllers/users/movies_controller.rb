class Users::MoviesController < ApplicationController
  def index
    #@facade = MovieFacade.new
    conn = Faraday.new(url: "https://api.themoviedb.org") do |faraday|
      faraday.params["api_key"] = 
      "88c7be8577d6a96191637ecd1c0e4a1d"
    end
    
    response = conn.get("/3/discover/movie")
    
    data = JSON.parse(response.body, symbolize_names: true)

    @movies = data[:results]
    
    require 'pry'; binding.pry
  end
end

# Faraday.new(url: "https://api.themoviedb.org/3/discover/movie/?api_key=ed85c4caf218889cdedcbf633681d9f4" ) do |faraday|
#   faraday.headers["api_key"] = ENV["api_key"]
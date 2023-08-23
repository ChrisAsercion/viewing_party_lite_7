class Users::MoviesController < ApplicationController
  def index
    #@facade = MovieFacade.new
    conn = Faraday.new(url: "https://api.themoviedb.org") #do |faraday|
      #faraday.headers["api_key"] = "ed85c4caf218889cdedcbf633681d9f4"
    #end
    
    response = conn.get("/3/discover/movie/?api_key=#{ENV["movie_key"]}")
    require 'pry'; binding.pry
  end
end

# Faraday.new(url: "https://api.themoviedb.org/3/discover/movie/?api_key=ed85c4caf218889cdedcbf633681d9f4" ) do |faraday|
#   faraday.headers["api_key"] = ENV["api_key"]
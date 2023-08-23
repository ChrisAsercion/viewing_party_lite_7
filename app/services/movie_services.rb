class MovieService
  
  def get_url
    response = conn.get("https://api.themoviedb.org/3/discover/movie/?api_key=ed85c4caf218889cdedcbf633681d9f4")
    JSON.parse(response.body, symbolize_names: true)
  end

  def conn
    Faraday.new(url: "https://api.propublica.org") do |faraday|
      faraday.headers["X-API-Key"] = ENV["PROPUBLICA_API_KEY"]
    end
  end
end
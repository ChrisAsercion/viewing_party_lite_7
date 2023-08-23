require "rails_helper"
require 'webmock/rspec'

RSpec.describe "Users Movie index" do
  describe "index" do
    scenario "when I visit users/user_id/movies" do
      it "shows the top 20 movies" do
        stub_request(:get, "https://api.themoviedb.org/3/discover/movie?api_key=88c7be8577d6a96191637ecd1c0e4a1d").
        with(
          headers: {
         'Accept'=>'*/*',
         'Accept-Encoding'=>'gzip;q=1.0,deflate;q=0.6,identity;q=0.3',
         'User-Agent'=>'Faraday v2.7.10'
          }).
        to_return(status: 200, body: "", headers: {})

        expect(page.status_code).to eq 200
        expect(page).to have_content("Senator Bernard Sanders was found!")
        expect(page).to have_content("SenSanders")
      end
    end
  end
end
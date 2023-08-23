require "rails_helper"
require 'webmock/rspec'

RSpec.describe "Users Movie index" do
  describe "index" do
    scenario "when I visit users/user_id/movies" do
      it "shows the top 20 movies" do
        json_response = File.read()

        stub_request(:get, "")
      end
    end
  end
end
require "rails_helper"

RSpec.describe "Users Movie index" do
  describe "index" do
    scenario "when I visit users/user_id/discover" do
      u1 = User.create!(name: "Sean", email: "champion4lyfe@gmail.com")

      visit(user_discover_index_path(u1))

      expect(page).to have_button("Top Movies")
      expect(page).to have_button("Search")
      
      click_button("Top Movies")

      expect(current_path).to eq(user_movies_path(u1))
    end
  end
end
require 'rails_helper'

RSpec.describe "ReadingGoals", type: :request do
  describe "GET /reading_goals" do
    it "works! (now write some real specs)" do
      get reading_goals_path
      expect(response).to have_http_status(200)
    end
  end
end

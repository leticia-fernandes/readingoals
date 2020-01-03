require 'rails_helper'

RSpec.describe "reading_goals/edit", type: :view do
  let!(:reading_goal) { create(:reading_goal) }

  it "renders the edit reading_goal form" do
    assign(:reading_goal, reading_goal)
    render

    assert_select "form[action=?][method=?]", reading_goal_path(reading_goal), "post" do

      assert_select "input[name=?]", "reading_goal[title]"

      assert_select "input[name=?]", "reading_goal[number_pages]"

      assert_select "input[name=?]", "reading_goal[pages_per_day]"
    end
  end
end

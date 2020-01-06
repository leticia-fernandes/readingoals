require 'rails_helper'

RSpec.describe "reading_goals/new", type: :view do
  let!(:reading_goal) { build(:reading_goal) }

  it "renders new reading_goal form" do
    assign(:reading_goal, reading_goal)

    render

    assert_select "form[action=?][method=?]", reading_goals_path, "post" do

      assert_select "input[name=?]", "reading_goal[title]"

      assert_select "input[name=?]", "reading_goal[number_pages]"

      assert_select "input[name=?]", "reading_goal[pages_per_day]"
    end
  end
end

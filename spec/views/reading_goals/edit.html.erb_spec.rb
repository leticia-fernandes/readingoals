require 'rails_helper'

RSpec.describe "reading_goals/edit", type: :view do
  before(:each) do
    @reading_goal = assign(:reading_goal, ReadingGoal.create!(
      :title => "MyString",
      :number_pages => 1,
      :pages_per_day => 1
    ))
  end

  it "renders the edit reading_goal form" do
    render

    assert_select "form[action=?][method=?]", reading_goal_path(@reading_goal), "post" do

      assert_select "input[name=?]", "reading_goal[title]"

      assert_select "input[name=?]", "reading_goal[number_pages]"

      assert_select "input[name=?]", "reading_goal[pages_per_day]"
    end
  end
end

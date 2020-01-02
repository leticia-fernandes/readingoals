require 'rails_helper'

RSpec.describe "reading_goals/new", type: :view do
  before(:each) do
    assign(:reading_goal, ReadingGoal.new(
      :title => "MyString",
      :number_pages => 1,
      :pages_per_day => 1
    ))
  end

  it "renders new reading_goal form" do
    render

    assert_select "form[action=?][method=?]", reading_goals_path, "post" do

      assert_select "input[name=?]", "reading_goal[title]"

      assert_select "input[name=?]", "reading_goal[number_pages]"

      assert_select "input[name=?]", "reading_goal[pages_per_day]"
    end
  end
end

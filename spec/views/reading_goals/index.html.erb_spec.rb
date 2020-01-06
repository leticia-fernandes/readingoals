require 'rails_helper'

RSpec.describe "reading_goals/index", type: :view do
  let!(:reading_goal1) { create(:reading_goal) }
  let!(:reading_goal2) { create(:reading_goal) }

  it "renders a list of reading_goals" do

    assign(:reading_goals, [reading_goal1, reading_goal2])
    render

    assert_select "tr>td", :text => reading_goal1.title, :count => 1
    assert_select "tr>td", :text => reading_goal1.number_pages.to_s, :count => 1
    assert_select "tr>td", :text => reading_goal1.deadline.to_s, :count => 1
    assert_select "tr>td", :text => reading_goal1.pages_per_day.to_s, :count => 1

    assert_select "tr>td", :text => reading_goal2.title, :count => 1
    assert_select "tr>td", :text => reading_goal2.number_pages.to_s, :count => 1
    assert_select "tr>td", :text => reading_goal2.deadline.to_s, :count => 1
    assert_select "tr>td", :text => reading_goal2.pages_per_day.to_s, :count => 1
  end
end

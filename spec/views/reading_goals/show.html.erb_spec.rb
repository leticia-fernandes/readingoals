require 'rails_helper'

RSpec.describe "reading_goals/show", type: :view do
  let!(:reading_goal) { create(:reading_goal) }

  it "renders attributes in <p>" do
    assign(:reading_goal, reading_goal)
    render
    expect(rendered).to match(reading_goal.title)
    expect(rendered).to match(reading_goal.number_pages.to_s)
    expect(rendered).to match(reading_goal.deadline.to_s)
    expect(rendered).to match(reading_goal.pages_per_day.to_s)
  end
end

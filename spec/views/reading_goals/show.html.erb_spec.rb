require 'rails_helper'

RSpec.describe "reading_goals/show", type: :view do
  before(:each) do
    @reading_goal = assign(:reading_goal, ReadingGoal.create!(
      :title => "Title",
      :number_pages => 2,
      :pages_per_day => 3
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
  end
end

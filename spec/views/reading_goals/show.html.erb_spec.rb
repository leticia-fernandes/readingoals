require 'rails_helper'

RSpec.describe "reading_goals/show", type: :view do
  let!(:reading_goal) { create(:reading_goal) }

  it "renders attributes in <p>" do
    assign(:reading_goal, reading_goal)
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
  end
end

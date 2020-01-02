require 'rails_helper'

RSpec.describe "reading_goals/show", type: :view do
  before(:each) do
    let!(:reading_goal) { create(:reading_goal) }
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
  end
end

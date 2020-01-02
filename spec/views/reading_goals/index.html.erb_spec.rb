require 'rails_helper'

RSpec.describe "reading_goals/index", type: :view do
  before(:each) do
    let!(:reading_goal1) { create(:reading_goal) }
    let!(:reading_goal2) { create(:reading_goal) }
  end

  it "renders a list of reading_goals" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
  end
end

require 'rails_helper'

RSpec.describe "reading_goals/index", type: :view do
  before(:each) do
    assign(:reading_goals, [
      ReadingGoal.create!(
        :title => "Title",
        :number_pages => 2,
        :pages_per_day => 3
      ),
      ReadingGoal.create!(
        :title => "Title",
        :number_pages => 2,
        :pages_per_day => 3
      )
    ])
  end

  it "renders a list of reading_goals" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
  end
end

require 'spec_helper'

describe "games/index" do
  before(:each) do
    assign(:games, [
      stub_model(Game,
        :ut_score => 1,
        :opponent_score => 2,
        :season_id => 3,
        :opponent_id => 4,
        :location_id => 5,
        :ut_rank => 6,
        :opponent_rank => 7,
        :result_id => 8,
        :coach_id => 9
      ),
      stub_model(Game,
        :ut_score => 1,
        :opponent_score => 2,
        :season_id => 3,
        :opponent_id => 4,
        :location_id => 5,
        :ut_rank => 6,
        :opponent_rank => 7,
        :result_id => 8,
        :coach_id => 9
      )
    ])
  end

  it "renders a list of games" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
    assert_select "tr>td", :text => 6.to_s, :count => 2
    assert_select "tr>td", :text => 7.to_s, :count => 2
    assert_select "tr>td", :text => 8.to_s, :count => 2
    assert_select "tr>td", :text => 9.to_s, :count => 2
  end
end

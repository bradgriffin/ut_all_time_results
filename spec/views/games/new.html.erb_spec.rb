require 'spec_helper'

describe "games/new" do
  before(:each) do
    assign(:game, stub_model(Game,
      :ut_score => 1,
      :opponent_score => 1,
      :season_id => 1,
      :opponent_id => 1,
      :location_id => 1,
      :ut_rank => 1,
      :opponent_rank => 1,
      :result_id => 1,
      :coach_id => 1
    ).as_new_record)
  end

  it "renders new game form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", games_path, "post" do
      assert_select "input#game_ut_score[name=?]", "game[ut_score]"
      assert_select "input#game_opponent_score[name=?]", "game[opponent_score]"
      assert_select "input#game_season_id[name=?]", "game[season_id]"
      assert_select "input#game_opponent_id[name=?]", "game[opponent_id]"
      assert_select "input#game_location_id[name=?]", "game[location_id]"
      assert_select "input#game_ut_rank[name=?]", "game[ut_rank]"
      assert_select "input#game_opponent_rank[name=?]", "game[opponent_rank]"
      assert_select "input#game_result_id[name=?]", "game[result_id]"
      assert_select "input#game_coach_id[name=?]", "game[coach_id]"
    end
  end
end

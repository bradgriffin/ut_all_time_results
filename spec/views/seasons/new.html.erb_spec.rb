require 'spec_helper'

describe "seasons/new" do
  before(:each) do
    assign(:season, stub_model(Season,
      :season => "MyString"
    ).as_new_record)
  end

  it "renders new season form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", seasons_path, "post" do
      assert_select "input#season_season[name=?]", "season[season]"
    end
  end
end

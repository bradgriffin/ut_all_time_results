require 'spec_helper'

describe "rankings/edit" do
  before(:each) do
    @ranking = assign(:ranking, stub_model(Ranking,
      :ranking => "MyString"
    ))
  end

  it "renders the edit ranking form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", ranking_path(@ranking), "post" do
      assert_select "input#ranking_ranking[name=?]", "ranking[ranking]"
    end
  end
end

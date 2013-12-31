require 'spec_helper'

describe "rankings/new" do
  before(:each) do
    assign(:ranking, stub_model(Ranking,
      :ranking => "MyString"
    ).as_new_record)
  end

  it "renders new ranking form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", rankings_path, "post" do
      assert_select "input#ranking_ranking[name=?]", "ranking[ranking]"
    end
  end
end

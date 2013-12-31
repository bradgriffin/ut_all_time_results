require 'spec_helper'

describe "rankings/index" do
  before(:each) do
    assign(:rankings, [
      stub_model(Ranking,
        :ranking => "Ranking"
      ),
      stub_model(Ranking,
        :ranking => "Ranking"
      )
    ])
  end

  it "renders a list of rankings" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Ranking".to_s, :count => 2
  end
end

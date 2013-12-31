require 'spec_helper'

describe "opponents/index" do
  before(:each) do
    assign(:opponents, [
      stub_model(Opponent,
        :school_name => "School Name"
      ),
      stub_model(Opponent,
        :school_name => "School Name"
      )
    ])
  end

  it "renders a list of opponents" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "School Name".to_s, :count => 2
  end
end

require 'spec_helper'

describe "seasons/index" do
  before(:each) do
    assign(:seasons, [
      stub_model(Season,
        :season => "Season"
      ),
      stub_model(Season,
        :season => "Season"
      )
    ])
  end

  it "renders a list of seasons" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Season".to_s, :count => 2
  end
end

require 'spec_helper'

describe "rankings/show" do
  before(:each) do
    @ranking = assign(:ranking, stub_model(Ranking,
      :ranking => "Ranking"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Ranking/)
  end
end

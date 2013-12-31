require 'spec_helper'

describe "opponents/show" do
  before(:each) do
    @opponent = assign(:opponent, stub_model(Opponent,
      :school_name => "School Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/School Name/)
  end
end

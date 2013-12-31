require 'spec_helper'

describe "opponents/edit" do
  before(:each) do
    @opponent = assign(:opponent, stub_model(Opponent,
      :school_name => "MyString"
    ))
  end

  it "renders the edit opponent form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", opponent_path(@opponent), "post" do
      assert_select "input#opponent_school_name[name=?]", "opponent[school_name]"
    end
  end
end

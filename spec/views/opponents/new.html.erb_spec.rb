require 'spec_helper'

describe "opponents/new" do
  before(:each) do
    assign(:opponent, stub_model(Opponent,
      :school_name => "MyString"
    ).as_new_record)
  end

  it "renders new opponent form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", opponents_path, "post" do
      assert_select "input#opponent_school_name[name=?]", "opponent[school_name]"
    end
  end
end

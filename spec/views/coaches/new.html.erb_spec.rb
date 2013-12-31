require 'spec_helper'

describe "coaches/new" do
  before(:each) do
    assign(:coach, stub_model(Coach,
      :name => "MyString",
      :active_seasons => "MyString"
    ).as_new_record)
  end

  it "renders new coach form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", coaches_path, "post" do
      assert_select "input#coach_name[name=?]", "coach[name]"
      assert_select "input#coach_active_seasons[name=?]", "coach[active_seasons]"
    end
  end
end

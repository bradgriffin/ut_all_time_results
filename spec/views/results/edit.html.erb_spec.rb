require 'spec_helper'

describe "results/edit" do
  before(:each) do
    @result = assign(:result, stub_model(Result,
      :result => "MyString"
    ))
  end

  it "renders the edit result form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", result_path(@result), "post" do
      assert_select "input#result_result[name=?]", "result[result]"
    end
  end
end

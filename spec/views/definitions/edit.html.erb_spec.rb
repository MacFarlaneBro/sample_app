require 'spec_helper'

describe "definitions/edit" do
  before(:each) do
    @definition = assign(:definition, stub_model(Definition,
      :name => "MyString",
      :def => "MyText"
    ))
  end

  it "renders the edit definition form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", definition_path(@definition), "post" do
      assert_select "input#definition_name[name=?]", "definition[name]"
      assert_select "textarea#definition_def[name=?]", "definition[def]"
    end
  end
end

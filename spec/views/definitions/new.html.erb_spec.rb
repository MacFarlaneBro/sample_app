require 'spec_helper'

describe "definitions/new" do
  before(:each) do
    assign(:definition, stub_model(Definition,
      :name => "MyString",
      :def => "MyText"
    ).as_new_record)
  end

  it "renders new definition form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", definitions_path, "post" do
      assert_select "input#definition_name[name=?]", "definition[name]"
      assert_select "textarea#definition_def[name=?]", "definition[def]"
    end
  end
end

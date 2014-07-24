require 'spec_helper'

describe "definitions/index" do
  before(:each) do
    assign(:definitions, [
      stub_model(Definition,
        :name => "Name",
        :def => "MyText"
      ),
      stub_model(Definition,
        :name => "Name",
        :def => "MyText"
      )
    ])
  end

  it "renders a list of definitions" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end

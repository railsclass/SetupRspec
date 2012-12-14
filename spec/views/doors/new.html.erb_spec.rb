require 'spec_helper'

describe "doors/new" do
  before(:each) do
    assign(:door, stub_model(Door,
      :day => 1,
      :content => "MyText"
    ).as_new_record)
  end

  it "renders new door form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => doors_path, :method => "post" do
      assert_select "input#door_day", :name => "door[day]"
      assert_select "textarea#door_content", :name => "door[content]"
    end
  end
end

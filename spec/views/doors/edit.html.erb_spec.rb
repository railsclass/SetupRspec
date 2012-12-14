require 'spec_helper'

describe "doors/edit" do
  before(:each) do
    @door = assign(:door, stub_model(Door,
      :day => 1,
      :content => "MyText"
    ))
  end

  it "renders the edit door form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => doors_path(@door), :method => "post" do
      assert_select "input#door_day", :name => "door[day]"
      assert_select "textarea#door_content", :name => "door[content]"
    end
  end
end

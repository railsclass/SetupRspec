require 'spec_helper'

describe "doors/show" do
  before(:each) do
    @door = assign(:door, stub_model(Door,
      :day => 1,
      :content => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/MyText/)
  end
end

require 'spec_helper'

describe "favors/index" do
  before(:each) do
    assign(:favors, [
      stub_model(Favor,
        :address => "Address",
        :latitude => 1.5,
        :longitude => 1.5,
        :title => "Title",
        :description => "Description",
        :user => nil
      ),
      stub_model(Favor,
        :address => "Address",
        :latitude => 1.5,
        :longitude => 1.5,
        :title => "Title",
        :description => "Description",
        :user => nil
      )
    ])
  end

  it "renders a list of favors" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end

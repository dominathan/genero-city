require 'spec_helper'

describe "favors/show" do
  before(:each) do
    @favor = assign(:favor, stub_model(Favor,
      :address => "Address",
      :latitude => 1.5,
      :longitude => 1.5,
      :title => "Title",
      :description => "Description",
      :user => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Address/)
    rendered.should match(/1.5/)
    rendered.should match(/1.5/)
    rendered.should match(/Title/)
    rendered.should match(/Description/)
    rendered.should match(//)
  end
end

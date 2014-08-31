require 'spec_helper'

describe "favors/edit" do
  before(:each) do
    @favor = assign(:favor, stub_model(Favor,
      :address => "MyString",
      :latitude => 1.5,
      :longitude => 1.5,
      :title => "MyString",
      :description => "MyString",
      :user => nil
    ))
  end

  it "renders the edit favor form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", favor_path(@favor), "post" do
      assert_select "input#favor_address[name=?]", "favor[address]"
      assert_select "input#favor_latitude[name=?]", "favor[latitude]"
      assert_select "input#favor_longitude[name=?]", "favor[longitude]"
      assert_select "input#favor_title[name=?]", "favor[title]"
      assert_select "input#favor_description[name=?]", "favor[description]"
      assert_select "input#favor_user[name=?]", "favor[user]"
    end
  end
end

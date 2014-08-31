require 'spec_helper'

describe "favors/new" do
  before(:each) do
    assign(:favor, stub_model(Favor,
      :address => "MyString",
      :latitude => 1.5,
      :longitude => 1.5,
      :title => "MyString",
      :description => "MyString",
      :user => nil
    ).as_new_record)
  end

  it "renders new favor form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", favors_path, "post" do
      assert_select "input#favor_address[name=?]", "favor[address]"
      assert_select "input#favor_latitude[name=?]", "favor[latitude]"
      assert_select "input#favor_longitude[name=?]", "favor[longitude]"
      assert_select "input#favor_title[name=?]", "favor[title]"
      assert_select "input#favor_description[name=?]", "favor[description]"
      assert_select "input#favor_user[name=?]", "favor[user]"
    end
  end
end

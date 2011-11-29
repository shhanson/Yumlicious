require 'spec_helper'

describe "restaurants/new.html.erb" do
  before(:each) do
    assign(:restaurant, stub_model(Restaurant,
      :name => "MyString",
      :addr => "MyString",
      :city => "MyString",
      :state => "MyString",
      :phone => "MyString",
      :type => "",
      :wsite => "MyString"
    ).as_new_record)
  end

  it "renders new restaurant form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => restaurants_path, :method => "post" do
      assert_select "input#restaurant_name", :name => "restaurant[name]"
      assert_select "input#restaurant_addr", :name => "restaurant[addr]"
      assert_select "input#restaurant_city", :name => "restaurant[city]"
      assert_select "input#restaurant_state", :name => "restaurant[state]"
      assert_select "input#restaurant_phone", :name => "restaurant[phone]"
      assert_select "input#restaurant_type", :name => "restaurant[type]"
      assert_select "input#restaurant_wsite", :name => "restaurant[wsite]"
    end
  end
end

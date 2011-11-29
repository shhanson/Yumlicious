require 'spec_helper'

describe "reviews/new.html.erb" do
  before(:each) do
    assign(:review, stub_model(Review,
      :content => "MyString",
      :user_id => 1
    ).as_new_record)
  end

  it "renders new review form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => reviews_path, :method => "post" do
      assert_select "input#review_content", :name => "review[content]"
      assert_select "input#review_user_id", :name => "review[user_id]"
    end
  end
end

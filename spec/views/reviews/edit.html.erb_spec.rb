require 'spec_helper'

describe "reviews/edit.html.erb" do
  before(:each) do
    @review = assign(:review, stub_model(Review,
      :content => "MyString",
      :user_id => 1
    ))
  end

  it "renders the edit review form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => reviews_path(@review), :method => "post" do
      assert_select "input#review_content", :name => "review[content]"
      assert_select "input#review_user_id", :name => "review[user_id]"
    end
  end
end

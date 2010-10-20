require 'spec_helper'

describe "posts/show.html.erb" do
  before(:each) do
    @post = assign(:post, stub_model(Post,
      :title => "Title",
      :body => "MyText",
      :author => "",
      :state => "State",
      :summary => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    rendered.should match(/Title/)
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    rendered.should match(/MyText/)
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    rendered.should match(//)
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    rendered.should match(/State/)
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    rendered.should match(/MyText/)
  end
end

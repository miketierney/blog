require 'spec_helper'

describe "posts/new.html.erb" do
  before(:each) do
    assign(:post, stub_model(Post,
      :title => "MyString",
      :body => "MyText",
      :author => "",
      :state => "MyString",
      :summary => "MyText"
    ).as_new_record)
  end

  it "renders new post form" do
    render

    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "form", :action => posts_path, :method => "post" do
      assert_select "input#post_title", :name => "post[title]"
      assert_select "textarea#post_body", :name => "post[body]"
      assert_select "input#post_author", :name => "post[author]"
      assert_select "input#post_state", :name => "post[state]"
      assert_select "textarea#post_summary", :name => "post[summary]"
    end
  end
end

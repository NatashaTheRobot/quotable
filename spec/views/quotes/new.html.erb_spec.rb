require 'spec_helper'

describe "quotes/new" do
  before(:each) do
    assign(:quote, stub_model(Quote,
      :text => "MyText",
      :author => "MyString"
    ).as_new_record)
  end

  it "renders new quote form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => quotes_path, :method => "post" do
      assert_select "textarea#quote_text", :name => "quote[text]"
      assert_select "input#quote_author", :name => "quote[author]"
    end
  end
end

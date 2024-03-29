require 'rails_helper'

RSpec.describe "searches/new", :type => :view do
  before(:each) do
    assign(:search, Search.new(
      :term => "MyString"
    ))
  end

  it "renders new search form" do
    render

    assert_select "form[action=?][method=?]", searches_path, "post" do

      assert_select "input#search_term[name=?]", "search[term]"
    end
  end
end

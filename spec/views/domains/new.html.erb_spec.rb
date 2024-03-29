require 'rails_helper'

RSpec.describe "domains/new", :type => :view do
  before(:each) do
    assign(:domain, Domain.new(
      :term => "MyString"
    ))
  end

  it "renders new domain form" do
    render

    assert_select "form[action=?][method=?]", domains_path, "post" do

      assert_select "input#domain_term[name=?]", "domain[term]"
    end
  end
end

require 'rails_helper'

RSpec.describe "searches/show", :type => :view do
  before(:each) do
    @search = assign(:search, Search.create!(
      :term => "Term"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Term/)
  end
end

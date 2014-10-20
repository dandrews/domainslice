require 'rails_helper'

RSpec.describe "domains/show", :type => :view do
  before(:each) do
    @domain = assign(:domain, Domain.create!(
      :term => "Term"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Term/)
  end
end

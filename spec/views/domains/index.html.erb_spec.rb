require 'rails_helper'

RSpec.describe "domains/index", :type => :view do
  before(:each) do
    assign(:domains, [
      Domain.create!(
        :term => "Term"
      ),
      Domain.create!(
        :term => "Term"
      )
    ])
  end

  it "renders a list of domains" do
    render
    assert_select "tr>td", :text => "Term".to_s, :count => 2
  end
end

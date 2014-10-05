require 'rails_helper'

RSpec.describe "searches/index", :type => :view do
  before(:each) do
    assign(:searches, [
      Search.create!(
        :term => "Term"
      ),
      Search.create!(
        :term => "Term"
      )
    ])
  end

  it "renders a list of searches" do
    render
    assert_select "tr>td", :text => "Term".to_s, :count => 2
  end
end

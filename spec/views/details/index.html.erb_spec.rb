require 'rails_helper'

RSpec.describe "details/index", type: :view do
  before(:each) do
    assign(:details, [
      Detail.create!(
        :restaurant => nil
      ),
      Detail.create!(
        :restaurant => nil
      )
    ])
  end

  it "renders a list of details" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end

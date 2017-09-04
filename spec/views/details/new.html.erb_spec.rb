require 'rails_helper'

RSpec.describe "details/new", type: :view do
  before(:each) do
    assign(:detail, Detail.new(
      :restaurant => nil
    ))
  end

  it "renders new detail form" do
    render

    assert_select "form[action=?][method=?]", details_path, "post" do

      assert_select "input#detail_restaurant_id[name=?]", "detail[restaurant_id]"
    end
  end
end

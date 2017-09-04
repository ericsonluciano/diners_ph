require 'rails_helper'

RSpec.describe "details/edit", type: :view do
  before(:each) do
    @detail = assign(:detail, Detail.create!(
      :restaurant => nil
    ))
  end

  it "renders the edit detail form" do
    render

    assert_select "form[action=?][method=?]", detail_path(@detail), "post" do

      assert_select "input#detail_restaurant_id[name=?]", "detail[restaurant_id]"
    end
  end
end

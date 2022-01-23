require 'rails_helper'

RSpec.describe "uploads/index", type: :view do
  before(:each) do
    assign(:uploads, [
      Upload.create!(
        title: "Title",
        description: "Description"
      ),
      Upload.create!(
        title: "Title",
        description: "Description"
      )
    ])
  end

  it "renders a list of uploads" do
    render
    assert_select "tr>td", text: "Title".to_s, count: 2
    assert_select "tr>td", text: "Description".to_s, count: 2
  end
end

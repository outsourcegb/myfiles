require 'rails_helper'

RSpec.describe "uploads/edit", type: :view do
  before(:each) do
    @upload = assign(:upload, Upload.create!(
      title: "MyString",
      description: "MyString"
    ))
  end

  it "renders the edit upload form" do
    render

    assert_select "form[action=?][method=?]", upload_path(@upload), "post" do

      assert_select "input[name=?]", "upload[title]"

      assert_select "input[name=?]", "upload[description]"
    end
  end
end

require 'rails_helper'

RSpec.describe "uploads/new", type: :view do
  before(:each) do
    assign(:upload, Upload.new(
      title: "MyString",
      description: "MyString"
    ))
  end

  it "renders new upload form" do
    render

    assert_select "form[action=?][method=?]", uploads_path, "post" do

      assert_select "input[name=?]", "upload[title]"

      assert_select "input[name=?]", "upload[description]"
    end
  end
end

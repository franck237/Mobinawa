require 'rails_helper'

RSpec.describe "adresses/new", type: :view do
  before(:each) do
    assign(:adress, Adress.new(
      :name => "MyString",
      :city => nil,
      :lat => "9.99",
      :lng => "9.99"
    ))
  end

  it "renders new adress form" do
    render

    assert_select "form[action=?][method=?]", adresses_path, "post" do

      assert_select "input[name=?]", "adress[name]"

      assert_select "input[name=?]", "adress[city_id]"

      assert_select "input[name=?]", "adress[lat]"

      assert_select "input[name=?]", "adress[lng]"
    end
  end
end

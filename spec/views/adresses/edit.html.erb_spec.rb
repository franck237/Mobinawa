require 'rails_helper'

RSpec.describe "adresses/edit", type: :view do
  before(:each) do
    @adress = assign(:adress, Adress.create!(
      :name => "MyString",
      :city => nil,
      :lat => "9.99",
      :lng => "9.99"
    ))
  end

  it "renders the edit adress form" do
    render

    assert_select "form[action=?][method=?]", adress_path(@adress), "post" do

      assert_select "input[name=?]", "adress[name]"

      assert_select "input[name=?]", "adress[city_id]"

      assert_select "input[name=?]", "adress[lat]"

      assert_select "input[name=?]", "adress[lng]"
    end
  end
end

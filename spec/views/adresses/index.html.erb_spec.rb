require 'rails_helper'

RSpec.describe "adresses/index", type: :view do
  before(:each) do
    assign(:adresses, [
      Adress.create!(
        :name => "Name",
        :city => nil,
        :lat => "9.99",
        :lng => "9.99"
      ),
      Adress.create!(
        :name => "Name",
        :city => nil,
        :lat => "9.99",
        :lng => "9.99"
      )
    ])
  end

  it "renders a list of adresses" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
  end
end

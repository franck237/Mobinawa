require 'rails_helper'

RSpec.describe "adresses/show", type: :view do
  before(:each) do
    @adress = assign(:adress, Adress.create!(
      :name => "Name",
      :city => nil,
      :lat => "9.99",
      :lng => "9.99"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(//)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
  end
end

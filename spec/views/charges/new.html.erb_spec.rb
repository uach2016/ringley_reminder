require 'rails_helper'

RSpec.describe "charges/new", type: :view do
  before(:each) do
    assign(:charge, Charge.new(
      :estate_code => "MyString",
      :period => "MyString"
    ))
  end

  it "renders new charge form" do
    render

    assert_select "form[action=?][method=?]", charges_path, "post" do

      assert_select "input#charge_estate_code[name=?]", "charge[estate_code]"

    end
  end
end

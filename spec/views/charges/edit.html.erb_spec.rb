require 'rails_helper'
require 'date'

RSpec.describe "charges/edit", type: :view do
  before(:each) do
    @charge = assign(:charge, Charge.create!(
      :estate_code => "MyString",
      :period => "Quarterly",
      :due_date => Date.new
    ))
  end

  it "renders the edit charge form" do
    render

    assert_select "form[action=?][method=?]", charge_path(@charge), "post" do

      assert_select "input#charge_estate_code[name=?]", "charge[estate_code]"
    end
  end
end

RSpec.describe "charges/edit", type: :view do
  before(:each) do
    @charge = assign(:charge, Charge.create!(
      :estate_code => "MyString",
      :period => "Twice_a_year",
      :due_date => Date.new
    ))
  end

  it "renders the edit charge form" do
    render

    assert_select "form[action=?][method=?]", charge_path(@charge), "post" do

      assert_select "input#charge_estate_code[name=?]", "charge[estate_code]"
    end
  end
end







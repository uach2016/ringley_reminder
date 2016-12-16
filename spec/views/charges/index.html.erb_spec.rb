require 'rails_helper'
require 'date'

RSpec.describe "charges/index", type: :view do
  before(:each) do
    assign(:charges, [
       Charge.create!(
        :estate_code => "Estate Code",
        :period => "Quarterly",
        :due_date => Date.new
      ),
      Charge.create!(
        :estate_code => "Estate Code",
        :period => "Quarterly",
        :due_date => Date.new
      )
    ])
  end

  it "renders a list of charges" do
    render
    assert_select "tr>td", :text => "Estate Code".to_s, :count => 2
    assert_select "tr>td", :text => "Quarterly".to_s, :count => 2
  end
end

RSpec.describe "charges/index", type: :view do
  before(:each) do
    assign(:charges, [
       Charge.create!(
        :estate_code => "Estate Code",
        :period => "Twice_a_year",
        :due_date => Date.new
      ),
      Charge.create!(
        :estate_code => "Estate Code",
        :period => "Twice_a_year",
        :due_date => Date.new
      )
    ])
  end

  it "renders a list of charges" do
    render
    assert_select "tr>td", :text => "Estate Code".to_s, :count => 2
    assert_select "tr>td", :text => "Twice_a_year".to_s, :count => 2
  end
end
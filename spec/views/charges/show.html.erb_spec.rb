require 'rails_helper'
require 'date'

RSpec.describe "charges/show", type: :view do
  before(:each) do
    @charge = assign(:charge, Charge.create!(
      :estate_code => "Estate Code",
      :period => "Quarterly",
      :due_date => Date.new
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Estate Code/)
    expect(rendered).to match(/Period/)
  end
end

RSpec.describe "charges/show", type: :view do
  before(:each) do
    @charge = assign(:charge, Charge.create!(
      :estate_code => "Estate Code",
      :period => "Twice_a_year",
      :due_date => Date.new
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Estate Code/)
    expect(rendered).to match(/Period/)
  end
end





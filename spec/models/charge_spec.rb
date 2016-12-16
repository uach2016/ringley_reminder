require 'rails_helper'
require 'date'

RSpec.describe Charge, type: :model do
	let(:charge) {Charge.new}
  it "is not valid without attributes" do
  	expect(charge).to_not be_valid
	end
  it "is not valid with wrong arguments" do
  	new_charge = Charge.new(estate_code: 2, period: 8, due_date: "unai")
  	expect(new_charge).to_not be_valid
  end
  it "is valid with good arguments" do
  	new_charge = Charge.new(estate_code: "my_string", period: "Quarterly", due_date: Date.new)
  	expect(new_charge).to be_valid
  end
end

class Charge < ApplicationRecord
	validates_presence_of :estate_code, :period, :due_date
	validates :period, inclusion: { in: %w(Quarterly Twice_a_year),
    message: "%{value} is not a valid" }
end

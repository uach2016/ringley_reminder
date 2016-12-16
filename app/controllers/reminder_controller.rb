class ReminderController < ApplicationController
  def index
    @date = Date.today

    rules =
    [
      { :period => 'Quarterly',    :time => @date.next_month },
      { :period => 'Twice_a_year', :time =>  @date.next_month.next_month}
    ]
    
    reminder = Reminder.new(rules)

    estates = ['0066S', '0123S', '0250S']
    @reminders = reminder.on(@date, estates)
  end
end

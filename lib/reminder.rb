class Reminder
 def initialize (rules)
    @rules = rules
  end

  def rules
    @rules
  end

  def on (date, estates)
    all_charges = Charge.all
    reminders = []

    estates.each do |estate|
      all_charges.each do |charge|
        if (estate == charge.estate_code) && ((charge.period == 'Quarterly') && (date == charge.due_date.prev_month))
          frame
          publish charge.estate_code, charge.period, charge.due_date
          reminders.push(charge)

        end
        if (estate == charge.estate_code) && ((charge.period == 'Twice_a_year') && (date == charge.due_date<<2))
          frame
          publish charge.estate_code, charge.period, charge.due_date
          reminders.push(charge)
        end
      end
    end
    reminders
   end

   def frame
    puts "+---------------+---------------------------------------+"
    puts "|Date           |Reminders                              |"           
    puts "+---------------+---------------------------------------+"
  end

   def publish estate, period,  due_date
     puts "|#{Date.today}"" |#{estate}  due date: #{due_date}    |" 
        puts "+------------------------+------------------------------+"


   end
end

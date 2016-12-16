class Reminder
 def initialize (rules)
    @rules = rules
  end

  def rules
    @rules
  end

  def on (date, estates)
    reminders = Array.new

    estates.each do |estate|
      charges = Charge.where('estate_code = ?', estate)
      charges.each do |charge|
        upcoming_due_dates = upcoming(charge, date)

        if upcoming_due_dates.any?
          reminders << {:estate => estate, :due_dates => upcoming_due_dates}
          publish_frame
          frame estate, upcoming_due_dates
        end
      end 
    end
      reminders
  end

    private
    
    def upcoming charge, date
      due_dates = Array.new

      @rules.each do |rule|
        if (rule[:period] == charge.period)
          if (rule[:time] == charge.due_date)
            due_dates << charge.due_date
          end
        end
      end
      due_dates
    end

    def publish_frame
      puts "+---------------+---------------------------------------+"
      puts "|Date           |Reminders                              |"           
      puts "+---------------+---------------------------------------+"
      puts "                                                        |"
    end

    def frame estate_code, due_date
      puts "|#{Date.today}""     |#{estate_code}  due date: #{due_date}" 
      puts "+------------------------+------------------------------+"
    end

  end

  
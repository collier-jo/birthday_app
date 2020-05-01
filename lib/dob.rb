class Dob
  attr_reader :time

  def initialize(time = Time.new)
    @time = time
  end 

  def birthday_message(dd, mm)
    day = dd.to_i
    month = mm.to_i
    current_day = @time.day
    current_month = @time.month

    if current_day === day && current_month === month
      return "Happy Birthday"
    else
      return "Hello"
    end 
  end 
end 
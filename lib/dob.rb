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
    current_year = @time.year
    birthday_date = Time.new((current_year), mm, dd)

    if current_day === day && current_month === month
      return "Happy Birthday"
    elsif birthday_date < @time
      birthday_date = Time.new((current_year + 1), mm, dd)
      days = (birthday_date - @time) / (60 * 60 * 24)
      "#{days.ceil} day(s) until your birthday!"
    else 
      birthday_date = Time.new((current_year), mm, dd)
      days = (birthday_date - @time) / (60 * 60 * 24)
      "#{days.ceil} day(s) until your birthday!"
    end 
  end 
end 

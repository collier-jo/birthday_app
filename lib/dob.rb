class Dob
  attr_reader :time

  def initialize(time = Time.new)
    @time = time
  end 

  def birthday_message(dd, mm)


    day = dd
    month = mm 

    if @time.month == month && @time.day == day
      return "Happy Birthday"
    else 
      return "Hello"
    end 

  end 
end 
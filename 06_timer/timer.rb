class Timer

  attr_accessor :seconds, :time_string

  def initialize
    @seconds = 0
  end

  def time_string
    strTime = Time.at(@seconds).utc.strftime("%H:%M:%S")
  end
end

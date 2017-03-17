
class Timer
  attr_accessor :seconds
  def initialize(seconds=0)
    @seconds=seconds
  end

  def timerize(time)
    if time<10
      time=time.to_s
      return '0'+time
    else
      return time.to_s
    end
  end
  def time_string
    minutes=timerize((@seconds/60)%60)
    hours=timerize((@seconds/60)/60)
    secs=timerize(@seconds%60)
    return "#{hours}:#{minutes}:#{secs}"
  end
end

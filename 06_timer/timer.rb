class Timer
  #write your code here
  def seconds
    @seconds=0
  end

  hours = 0
  minutes = 0
  secs = 0

  def seconds=(nr)
    @seconds = nr
    hours = nr/3600
    minutes = (nr-(hours*3600))/60
    secs = nr - (hours*3600) - (minutes *60)
  end

  def time_string
    h = @seconds/3600
    hours = h.to_s
    if h < 10
      hours = '0'+hours
    end

    m = (@seconds-(h*3600))/60
    minutes = m.to_s
    if m < 10
      minutes = '0'+minutes
    end

    s = @seconds - (h*3600) - (m *60)
    secs = s.to_s
    if s < 10
      secs = '0'+secs
    end
    @time_string = hours+':'+minutes+':'+secs
  end
end

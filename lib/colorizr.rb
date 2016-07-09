class String

  def red
    puts "\e[31m#{self}\e[0m"
  end
  
  def green
    puts "\e[32m#{self}\e[0m"
  end

  def yellow
    puts "\e[33m#{self}\e[0m"
  end

  def blue
    puts "\e[34m#{self}\e[0m"
  end

  def pink
    puts "\e[35m#{self}\e[0m"
  end

  def light_blue
    puts "\e[94m#{self}\e[0m"
  end

  def white
    puts "\e[97m#{self}\e[0m"
  end

  def light_grey
    puts "\e[30m#{self}\e[0m"
  end

  def black
    puts "\e[31m#{self}\e[0m"
  end

end

 
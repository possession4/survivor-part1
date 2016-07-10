class String
@@colors = [{ "name" => "red", "number" => "31"}, { "name" => "green", "number" => "32"}, 
      { "name" => "yellow", "number" => "33"}, { "name" => "blue", "number" => "34"}, 
      { "name" => "pink", "number" => "35"}, { "name" => "light_blue", "number" => "94"}, 
      { "name" => "white", "number" => "97"}, { "name" => "light_grey", "number" => "37"}, 
      { "name" => "black", "number" => "30"}]

  def self.create_colors
    @@colors.each do |color|
      # new_color_method = %Q{
      #           def #{color["name"]}
      #               puts "\e[#{color["number"]}m\#{self}\e[0m"
      #           end
      #       }
      #       class_eval(new_color_method)
      self.send(:define_method, "#{color["name"]}") do
        puts "\e[#{color["number"]}m#{self}\e[0m"
      end
    end
  end

  def self.colors
      colors_array = []
      @@colors.each do |color|
        colors_array.push(color["name"])
      end
      print colors_array
  end

  def self.sample_colors
    @@colors.each do |color|
         # puts "This is #{color}".send(color)
         print "This is ".send("white").to_s.chomp + "#{color["name"]}".send(color["name"]).to_s.chomp
    end 
  end
end

String.create_colors
String.sample_colors
String.colors
 
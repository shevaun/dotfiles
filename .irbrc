begin
  require "pry"
rescue LoadError
  puts "pry not installed, see #{__FILE__}"
end
